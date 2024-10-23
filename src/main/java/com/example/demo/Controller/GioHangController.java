package com.example.demo.Controller;

import com.example.demo.Entity.ChiTietSanPham;
import com.example.demo.Entity.GioHang;
import com.example.demo.Entity.NguoiDung;
import com.example.demo.Repository.ChiTietSanPhamRepo;
import com.example.demo.Repository.GioHangRepo;
import com.example.demo.Repository.NguoiDungRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import java.util.List;
import java.util.Optional;

@Controller
public class GioHangController {

    @Autowired
    private GioHangRepo gioHangRepo;

    @Autowired
    private NguoiDungRepo nguoiDungRepo;

    @Autowired
    private ChiTietSanPhamRepo chiTietSanPhamRepo;

    @GetMapping("/giohang/hienthi")
    public String hienThi(Model model) {
        model.addAttribute("listGioHang", gioHangRepo.findAll());
        return "giohang/hienthi"; // Giả sử bạn có một trang hienthi cho giỏ hàng
    }

    @PostMapping("/giohang/add/{idNguoiDung}/{idSPCT}")
    public String add(@PathVariable Integer idNguoiDung, @PathVariable Integer idSPCT) {
        Optional<NguoiDung> nguoiDungOpt = nguoiDungRepo.findById(idNguoiDung);
        Optional<ChiTietSanPham> chiTietSanPhamOpt = chiTietSanPhamRepo.findById(idSPCT);

        if (nguoiDungOpt.isPresent() && chiTietSanPhamOpt.isPresent()) {
            GioHang gioHang = new GioHang();
            gioHang.setNguoiDung(nguoiDungOpt.get());
            gioHang.setChiTietSanPham(chiTietSanPhamOpt.get());
            gioHang.setTrangThai(1); // Trạng thái giỏ hàng
            gioHang.setTen("Giỏ hàng của " + nguoiDungOpt.get().getTen()); // Tạo tên cho giỏ hàng

            gioHangRepo.save(gioHang); // Lưu giỏ hàng vào cơ sở dữ liệu
        }

        return "redirect:/giohang/hienthi";
    }

    @GetMapping("/giohang/delete/{id}")
    public String delete(@PathVariable Integer id) {
        gioHangRepo.deleteById(id);
        return "redirect:/giohang/hienthi";
    }

    @GetMapping("/giohang/view-update/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model) {
        Optional<GioHang> gioHangOpt = gioHangRepo.findById(id);
        if (gioHangOpt.isPresent()) {
            model.addAttribute("gioHang", gioHangOpt.get());
            return "giohang/update"; // Trang cập nhật giỏ hàng
        }
        return "redirect:/giohang/hienthi"; // Quay lại trang hiển thị nếu không tìm thấy
    }

    @PostMapping("/giohang/update/{id}")
    public String update(@PathVariable Integer id, GioHang gioHang) {
        // Cập nhật thông tin giỏ hàng
        gioHang.setId(id); // Đặt ID để cập nhật
        gioHangRepo.save(gioHang);
        return "redirect:/giohang/hienthi";
    }
}
