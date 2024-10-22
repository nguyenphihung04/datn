package com.example.demo.Controller;

import com.example.demo.Entity.SanPham;
import com.example.demo.Repository.SanPhamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/hnh-shop")
public class SanPhamController {

    @Autowired
    private SanPhamRepo spRepo;
    // Hiển thị danh sách sản phẩm
    @GetMapping("/san-pham/hien-thi")
    public String index(Model model) {
        List<SanPham> spList = spRepo.findAll();
        model.addAttribute("data", spList);
        return "san_pham/index";
    }
    // Hiển thị form thêm sản phẩm
    @GetMapping("/san-pham/create")
    public String createForm(Model model) {
        model.addAttribute("data", new SanPham()); // Tạo một đối tượng trống cho form
        return "san_pham/add"; // Trả về view "add.jsp"
    }

    // Xử lý khi người dùng submit form thêm sản phẩm
    @PostMapping("/san-pham/create")
    public String create(@ModelAttribute SanPham sanPham) {
        spRepo.save(sanPham); // Lưu sản phẩm vào cơ sở dữ liệu
        return "redirect:/hnh-shop/san-pham/hien-thi"; // Chuyển hướng về trang hiển thị sản phẩm sau khi thêm thành công
    }

    // Tạo form chỉnh sửa sản phẩm
    @GetMapping("/san-pham/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        SanPham sanPham = spRepo.findById(id).orElse(null);
        if (sanPham != null) {
            model.addAttribute("data", sanPham);
            return "san_pham/edit"; // Đường dẫn đến view JSP hiển thị form chỉnh sửa
        }
        return "redirect:/hnh-shop/san-pham/hien-thi"; // Nếu không tìm thấy sản phẩm, quay lại danh sách
    }
    // Xử lý chỉnh sửa sản phẩm
    @PostMapping("/san-pham/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute SanPham sanPham) {
        sanPham.setId(id); // Đặt ID để cập nhật
        spRepo.save(sanPham);
        return "redirect:/hnh-shop/san-pham/hien-thi"; // Quay lại danh sách sản phẩm
    }
    // Xóa sản phẩm
    @GetMapping("/san-pham/delete/{id}")
    public String delete(@PathVariable Integer id) {
        spRepo.deleteById(id);
        return "redirect:/hnh-shop/san-pham/hien-thi"; // Quay lại danh sách sản phẩm
    }
}
