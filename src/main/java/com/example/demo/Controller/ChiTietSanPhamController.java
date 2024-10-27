package com.example.demo.Controller;

import com.example.demo.Entity.ChiTietSanPham;
import com.example.demo.Entity.ChieuDaiTongThe;
import com.example.demo.Entity.ChuViCanVot;
import com.example.demo.Entity.DiemCanBang;
import com.example.demo.Entity.DoCungThan;
import com.example.demo.Entity.MauSac;
import com.example.demo.Entity.MucCangToiDa;
import com.example.demo.Entity.SanPham;
import com.example.demo.Entity.VatLieuKhung;
import com.example.demo.Entity.VatLieuTruc;
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
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Controller
//@RequestMapping("hnh-shop")
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
    @GetMapping("hnh-shop/ct-sanpham/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("sanPhamList", sanPhamRepo.findAll());
        model.addAttribute("diemCanBangList", diemCanBangRepo.findAll());
        model.addAttribute("vatLieuTrucList", vatLieuTrucRepo.findAll());
        model.addAttribute("vatLieuKhungList", vatLieuKhungRepo.findAll());
        model.addAttribute("doCungThanList", doCungThanRepo.findAll());
        model.addAttribute("chieuDaiTongTheList", chieuDaiTongTheRepo.findAll());
        model.addAttribute("mucCangToiDaList", mucCangToiDaRepo.findAll());
        model.addAttribute("chuViCanVotList", chuViCanVotRepo.findAll());
        model.addAttribute("mauSacList", mauSacRepo.findAll());
        model.addAttribute("listChiTietSanPham", spctRepo.findAll());
        return "CTSP/index"; // Đường dẫn đến trang hiển thị danh sách
    }


    // Xử lý tạo chi tiết sản phẩm
    @PostMapping("hnh-shop/ct-sanpham/create")
    public String create(@ModelAttribute ChiTietSanPham ctsp, @RequestParam Integer idSanPham,
                         @RequestParam Integer idDiemCanBang, @RequestParam Integer idVatLieuTruc,
                         @RequestParam Integer idVatLieuKhung, @RequestParam Integer idDoCungThan,
                         @RequestParam Integer idChieuDaiTongThe, @RequestParam Integer idMucCangToiDa,
                         @RequestParam Integer idChuViCanVot, @RequestParam Integer idMauSac) {
        SanPham sp = sanPhamRepo.findById(idSanPham).orElse(null);
        DiemCanBang dcb = diemCanBangRepo.findById(idDiemCanBang).orElse(null);
        VatLieuKhung vlk = vatLieuKhungRepo.findById(idVatLieuKhung).orElse(null);
        VatLieuTruc vlt = vatLieuTrucRepo.findById(idVatLieuTruc).orElse(null);
        DoCungThan dct = doCungThanRepo.findById(idDoCungThan).orElse(null);
        ChieuDaiTongThe cdtt = chieuDaiTongTheRepo.findById(idChieuDaiTongThe).orElse(null);
        MucCangToiDa mctd = mucCangToiDaRepo.findById(idMucCangToiDa).orElse(null);
        ChuViCanVot cvcv = chuViCanVotRepo.findById(idChuViCanVot).orElse(null);
        MauSac ms = mauSacRepo.findById(idMauSac).orElse(null);
        ctsp.setSanPham(sp);
        ctsp.setDiemCanBang(dcb);
        ctsp.setVatLieuKhung(vlk);
        ctsp.setVatLieuTruc(vlt);
        ctsp.setDoCungThan(dct);
        ctsp.setDiemCanBang(dcb);
        ctsp.setChieuDaiTongThe(cdtt);
        ctsp.setMucCangToiDa(mctd);
        ctsp.setChuViCanVot(cvcv);
        ctsp.setMauSac(ms);
        spctRepo.save(ctsp);
        return "redirect:/hnh-shop/ct-sanpham/hien-thi"; // Chuyển hướng đến trang hiển thị
    }

    // Hiển thị form chỉnh sửa chi tiết sản phẩm
    @GetMapping("hnh-shop/ct-sanpham/view-edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        model.addAttribute("spct", spctRepo.findById(id).get());
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

    @PostMapping("hnh-shop/ct-sanpham/edit/{id}")
    public String edit(@ModelAttribute ChiTietSanPham ctsp, @RequestParam Integer idSanPham,
                         @RequestParam Integer idDiemCanBang, @RequestParam Integer idVatLieuTruc,
                         @RequestParam Integer idVatLieuKhung, @RequestParam Integer idDoCungThan,
                         @RequestParam Integer idChieuDaiTongThe, @RequestParam Integer idMucCangToiDa,
                         @RequestParam Integer idChuViCanVot, @RequestParam Integer idMauSac) {
        SanPham sp = sanPhamRepo.findById(idSanPham).orElse(null);
        DiemCanBang dcb = diemCanBangRepo.findById(idDiemCanBang).orElse(null);
        VatLieuKhung vlk = vatLieuKhungRepo.findById(idVatLieuKhung).orElse(null);
        VatLieuTruc vlt = vatLieuTrucRepo.findById(idVatLieuTruc).orElse(null);
        DoCungThan dct = doCungThanRepo.findById(idDoCungThan).orElse(null);
        ChieuDaiTongThe cdtt = chieuDaiTongTheRepo.findById(idChieuDaiTongThe).orElse(null);
        MucCangToiDa mctd = mucCangToiDaRepo.findById(idMucCangToiDa).orElse(null);
        ChuViCanVot cvcv = chuViCanVotRepo.findById(idChuViCanVot).orElse(null);
        MauSac ms = mauSacRepo.findById(idMauSac).orElse(null);
        ctsp.setSanPham(sp);
        ctsp.setDiemCanBang(dcb);
        ctsp.setVatLieuKhung(vlk);
        ctsp.setVatLieuTruc(vlt);
        ctsp.setDoCungThan(dct);
        ctsp.setDiemCanBang(dcb);
        ctsp.setChieuDaiTongThe(cdtt);
        ctsp.setMucCangToiDa(mctd);
        ctsp.setChuViCanVot(cvcv);
        ctsp.setMauSac(ms);
        spctRepo.save(ctsp);
        return "redirect:/hnh-shop/ct-sanpham/hien-thi";
    }

    // Xử lý xóa chi tiết sản phẩm
    @GetMapping("hnh-shop/ct-sanpham/delete/{id}")
    public String delete(@PathVariable Integer id) {
        spctRepo.deleteById(id);
        return "redirect:/hnh-shop/ct-sanpham/hien-thi"; // Chuyển hướng đến trang hiển thị
    }
}
