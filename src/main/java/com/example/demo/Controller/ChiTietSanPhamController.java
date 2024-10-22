package com.example.demo.Controller;

import com.example.demo.Entity.ChiTietSanPham;
import com.example.demo.Repository.ChiTietSanPhamRepo;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

@Controller
@RequestMapping("hnh-shop")
public class ChiTietSanPhamController {

    @Autowired
    private ChiTietSanPhamRepo spctRepo;

    // Hiển thị danh sách chi tiết sản phẩm
    @GetMapping("/ct-san-pham/hien-thi")
    public String index(Model model) {
        List<ChiTietSanPham> ctSpList = spctRepo.findAll();
        model.addAttribute("data", ctSpList);
        return "CTSP/index"; // Đường dẫn đến view danh sách chi tiết sản phẩm
    }

    // Hiển thị form thêm chi tiết sản phẩm
    @GetMapping("/ct-san-pham/create")
    public String createForm(Model model) {
        model.addAttribute("data", new ChiTietSanPham()); // Tạo một đối tượng trống cho form
        return "CTSP/add"; // Đường dẫn đến view form thêm
    }

    // Xử lý khi người dùng submit form thêm chi tiết sản phẩm
    @PostMapping("hnh-shop/ct-san-pham/create")
    public String create(@ModelAttribute("data") @Valid ChiTietSanPham chiTietSanPham, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "CTSP/add"; // Quay lại form nếu có lỗi
        }
        spctRepo.save(chiTietSanPham);
        return "redirect:/hnh-shop/ct-san-pham/hien-thi";
    }


    // Tạo form chỉnh sửa chi tiết sản phẩm
    @GetMapping("/ct-san-pham/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        ChiTietSanPham chiTietSanPham = spctRepo.findById(id).orElse(null);
        if (chiTietSanPham != null) {
            model.addAttribute("data", chiTietSanPham);
            return "CTSP/edit"; // Đường dẫn đến view form chỉnh sửa
        }
        return "redirect:hnh-shop/ct-san-pham/hien-thi"; // Nếu không tìm thấy, quay lại danh sách
    }

    // Xử lý chỉnh sửa chi tiết sản phẩm
    @PostMapping("/ct-san-pham/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute("data") @Valid ChiTietSanPham chiTietSanPham, BindingResult result) {
        if (result.hasErrors()) {
            return "CTSP/edit"; // Quay lại form nếu có lỗi
        }
        chiTietSanPham.setId(id); // Đặt ID để cập nhật
        spctRepo.save(chiTietSanPham);
        return "redirect:hnh-shop/ct-san-pham/hien-thi"; // Quay lại danh sách chi tiết sản phẩm
    }

    // Xóa chi tiết sản phẩm
    @GetMapping("/ct-san-pham/delete/{id}")
    public String delete(@PathVariable Integer id) {
        if (spctRepo.existsById(id)) {
            spctRepo.deleteById(id);
        } else {
            // Thêm thông báo khi không tìm thấy sản phẩm
        }
        return "redirect:hnh-shop/ct-san-pham/hien-thi"; // Quay lại danh sách chi tiết sản phẩm
    }
}
