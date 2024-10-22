package com.example.demo.Controller;

import com.example.demo.Entity.HinhAnh;
import com.example.demo.Repository.HinhAnhRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hnh-shop")
public class HinhAnhController {
    @Autowired
    private HinhAnhRepo spRepo;

    // Hiển thị danh sách sản phẩm
    @GetMapping("/hinh-anh/hien-thi")
    public String hienThiSanPham(Model model) {
        model.addAttribute("data", spRepo.findAll());
        return "hinh_anh/index";  // Trả về view "index.jsp" hiển thị danh sách sản phẩm
    }
    // Hiển thị form thêm sản phẩm
    @GetMapping("/hinh-anh/create")
    public String createForm(Model model) {
        model.addAttribute("data", new HinhAnh()); // Tạo một đối tượng trống cho form
        return "hinh_anh/add"; // Trả về view "add.jsp"
    }

    // Xử lý khi người dùng submit form thêm sản phẩm
    @PostMapping("/hinh-anh/create")
    public String create(@ModelAttribute HinhAnh sanPham) {
        spRepo.save(sanPham); // Lưu sản phẩm vào cơ sở dữ liệu
        return "redirect:/hnh-shop/hinh-anh/hien-thi"; // Chuyển hướng về trang hiển thị sản phẩm sau khi thêm thành công
    }

    // Tạo form chỉnh sửa sản phẩm
    @GetMapping("/hinh-anh/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        HinhAnh sanPham = spRepo.findById(id).orElse(null);
        if (sanPham != null) {
            model.addAttribute("data", sanPham);
        }
        return "redirect:/hnh-shop/hinh-anh/hien-thi"; // Nếu không tìm thấy sản phẩm, quay lại danh sách
    }
    // Xử lý chỉnh sửa sản phẩm
    @PostMapping("/hinh-anh/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute HinhAnh sanPham) {
        sanPham.setId(id); // Đặt ID để cập nhật
        spRepo.save(sanPham);
        return "redirect:/hnh-shop/hinh-anh/hien-thi"; // Quay lại danh sách sản phẩm
    }
    // Xóa sản phẩm
    @GetMapping("/hinh-anh/delete/{id}")
    public String delete(@PathVariable Integer id) {
        spRepo.deleteById(id);
        return "redirect:/hnh-shop/hinh-anh/hien-thi"; // Quay lại danh sách sản phẩm
    }
}
