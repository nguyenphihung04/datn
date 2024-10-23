package com.example.demo.Controller;


import com.example.demo.Entity.DiaChi;
import com.example.demo.Entity.Loai;
import com.example.demo.Entity.NguoiDung;
import com.example.demo.Repository.DiaChiRepo;
import com.example.demo.Repository.NguoiDungRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/hnh-shop")
public class DiaChiController {

    @Autowired
    private DiaChiRepo diaChiRepo;

    @Autowired
    private NguoiDungRepo nguoiDungRepo;

    @GetMapping("/diachi/hienthi")
    public String hienThi(Model model) {
        try {
            List<DiaChi> listDiaChi = diaChiRepo.findAll();
            model.addAttribute("listDiaChi", listDiaChi);
            return "diachi/hienthi"; // Đảm bảo rằng đường dẫn này đúng
        } catch (Exception e) {
            e.printStackTrace(); // In ra lỗi nếu có
            model.addAttribute("errorMessage", "Có lỗi xảy ra khi hiển thị danh sách địa chỉ.");
            return "error"; // Trả về trang lỗi nếu có vấn đề
        }
    }

    @GetMapping("/diachi/create")
    public String showAddForm(Model model) {
        model.addAttribute("diaChi", new DiaChi()); // Tạo một đối tượng DiaChi mới
        return "dia-chi/add"; // Trang thêm địa chỉ
    }

    @PostMapping("/diachi/add/{idNguoiDung}")
    public String add(@PathVariable Integer idNguoiDung, @ModelAttribute DiaChi diaChi) {
        Optional<NguoiDung> nguoiDungOpt = nguoiDungRepo.findById(idNguoiDung);
        if (nguoiDungOpt.isPresent()) {
            diaChi.setNguoiDung(nguoiDungOpt.get());
            diaChiRepo.save(diaChi); // Lưu địa chỉ vào cơ sở dữ liệu
        }
        return "redirect:/hnh-shop/diachi/hienthi"; // Đường dẫn đến trang hiển thị
    }

    @GetMapping("/diachi/delete/{id}")
    public String delete(@PathVariable Integer id) {
        diaChiRepo.deleteById(id);
        return "redirect:/hnh-shop/diachi/hienthi"; // Đường dẫn đến trang hiển thị
    }

    @GetMapping("/diachi/view-update/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model) {
        Optional<DiaChi> diaChiOpt = diaChiRepo.findById(id);
        if (diaChiOpt.isPresent()) {
            model.addAttribute("diaChi", diaChiOpt.get());
            return "dia-chi/update"; // Trang cập nhật địa chỉ
        }
        return "redirect:/hnh-shop/diachi/hienthi"; // Quay lại trang hiển thị nếu không tìm thấy
    }

    @PostMapping("/diachi/update/{id}")
    public String update(@PathVariable Integer id, @ModelAttribute DiaChi diaChi) {
        diaChi.setId(id); // Đặt ID để cập nhật
        diaChiRepo.save(diaChi);
        return "redirect:/hnh-shop/diachi/hienthi"; // Đường dẫn đến trang hiển thị
    }
}
