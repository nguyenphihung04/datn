package com.example.demo.Controller;

import com.example.demo.Entity.ChiTietSanPham;
import com.example.demo.Repository.ChiTietSanPhamRepo;
import com.example.demo.Repository.ChieuDaiTongTheRepo;
import com.example.demo.Repository.ChuViCanVotRepo;
import com.example.demo.Repository.DiemCanBangRepo;
import com.example.demo.Repository.DoCungThanRepo;
import com.example.demo.Repository.HinhAnhRepo;
import com.example.demo.Repository.MauSacRepo;
import com.example.demo.Repository.MucCangToiDaRepo;
import com.example.demo.Repository.SanPhamRepo;
import com.example.demo.Repository.VatLieuKhungRepo;
import com.example.demo.Repository.VatLieuTrucRepo;
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
    private ChiTietSanPhamRepo spctRepo; // Repository cho ChiTietSanPham

    @Autowired
    private SanPhamRepo sanPhamRepo; // Repository cho SanPham

    @Autowired
    private DiemCanBangRepo diemCanBangRepo; // Repository cho DiemCanBang

    @Autowired
    private VatLieuTrucRepo vatLieuTrucRepo; // Repository cho VatLieuTruc

    @Autowired
    private VatLieuKhungRepo vatLieuKhungRepo; // Repository cho VatLieuKhung

    @Autowired
    private DoCungThanRepo doCungThanRepo; // Repository cho DoCungThan

    @Autowired
    private ChieuDaiTongTheRepo chieuDaiTongTheRepo; // Repository cho ChieuDaiTongThe

    @Autowired
    private MucCangToiDaRepo mucCangToiDaRepo; // Repository cho MucCangToiDa

    @Autowired
    private ChuViCanVotRepo chuViCanVotRepo; // Repository cho ChuViCanVot

    @Autowired
    private MauSacRepo mauSacRepo; // Repository cho MauSac

    // Hiển thị danh sách chi tiết sản phẩm
    @GetMapping("ct-sanpham/hien-thi")
    public String hienThi(Model model) {
        List<ChiTietSanPham> list = spctRepo.findAll();
        model.addAttribute("listChiTietSanPham", list);
        return "CTSP/index"; // Đường dẫn đến trang hiển thị danh sách
    }

    // Hiển thị form tạo chi tiết sản phẩm
    @GetMapping("ct-sanpham/create")
    public String createForm(Model model) {
        ChiTietSanPham chiTietSanPham = new ChiTietSanPham();
        model.addAttribute("data", chiTietSanPham);
        model.addAttribute("sanPhamList", sanPhamRepo.findAll());
        model.addAttribute("diemCanBangList", diemCanBangRepo.findAll());
        model.addAttribute("vatLieuTrucList", vatLieuTrucRepo.findAll());
        model.addAttribute("vatLieuKhungList", vatLieuKhungRepo.findAll());
        model.addAttribute("doCungThanList", doCungThanRepo.findAll());
        model.addAttribute("chieuDaiTongTheList", chieuDaiTongTheRepo.findAll());
        model.addAttribute("mucCangToiDaList", mucCangToiDaRepo.findAll());
        model.addAttribute("chuViCanVotList", chuViCanVotRepo.findAll());
        model.addAttribute("mauSacList", mauSacRepo.findAll());
        return "CTSP/add"; // Đường dẫn đến form tạo
    }

    // Xử lý tạo chi tiết sản phẩm
    @PostMapping("ct-sanpham/create")
    public String create(@ModelAttribute("data") @Valid ChiTietSanPham chiTietSanPham, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return createForm(model); // Quay lại form nếu có lỗi
        }

        // Lưu chi tiết sản phẩm
        spctRepo.save(chiTietSanPham);
        return "redirect:/hnh-shop/ct-sanpham/hien-thi"; // Chuyển hướng đến trang hiển thị
    }

    // Hiển thị form chỉnh sửa chi tiết sản phẩm
    @GetMapping("ct-sanpham/edit/{id}")
    public String editForm(@PathVariable("id") Integer id, Model model) {
        ChiTietSanPham chiTietSanPham = spctRepo.findById(id).orElse(null);
        model.addAttribute("data", chiTietSanPham);
        model.addAttribute("sanPhamList", sanPhamRepo.findAll());
        model.addAttribute("diemCanBangList", diemCanBangRepo.findAll());
        model.addAttribute("vatLieuTrucList", vatLieuTrucRepo.findAll());
        model.addAttribute("vatLieuKhungList", vatLieuKhungRepo.findAll());
        model.addAttribute("doCungThanList", doCungThanRepo.findAll());
        model.addAttribute("chieuDaiTongTheList", chieuDaiTongTheRepo.findAll());
        model.addAttribute("mucCangToiDaList", mucCangToiDaRepo.findAll());
        model.addAttribute("chuViCanVotList", chuViCanVotRepo.findAll());
        model.addAttribute("mauSacList", mauSacRepo.findAll());
        return "CTSP/edit"; // Đường dẫn đến form chỉnh sửa
    }

    // Xử lý chỉnh sửa chi tiết sản phẩm
    @PostMapping("ct-sanpham/edit/{id}")
    public String edit(@PathVariable("id") Integer id, @ModelAttribute("data") @Valid ChiTietSanPham chiTietSanPham, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return editForm(id, model); // Quay lại form nếu có lỗi
        }

        // Lưu chi tiết sản phẩm
        chiTietSanPham.setId(id); // Đặt lại ID để cập nhật
        spctRepo.save(chiTietSanPham);
        return "redirect:/hnh-shop/ct-sanpham/hien-thi"; // Chuyển hướng đến trang hiển thị
    }

    // Xử lý xóa chi tiết sản phẩm
    @GetMapping("ct-sanpham/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {
        spctRepo.deleteById(id);
        return "redirect:/hnh-shop/ct-sanpham/hien-thi"; // Chuyển hướng đến trang hiển thị
    }
}
