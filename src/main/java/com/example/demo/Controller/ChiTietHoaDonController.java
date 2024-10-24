package com.example.demo.Controller;

import com.example.demo.Entity.ChiTietHoaDon;
import com.example.demo.Entity.ChiTietSanPham;
import com.example.demo.Entity.HoaDon;
import com.example.demo.Repository.ChiTietHoaDonRepo;
import com.example.demo.Repository.ChiTietSanPhamRepo;
import com.example.demo.Repository.HoaDonRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChiTietHoaDonController {

    @Autowired
    HoaDonRepo hoaDonRepo;

    @Autowired
    ChiTietSanPhamRepo chiTietSanPhamRepo;

    @Autowired
    ChiTietHoaDonRepo chiTietHoaDonRepo;

    @GetMapping("chi-tiet-hd/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("ListHD", hoaDonRepo.findAll());
        model.addAttribute("ListCTSP", chiTietSanPhamRepo.findAll());
        model.addAttribute("ListCTHD", chiTietHoaDonRepo.findAll());

        return "CTHD/hienThi";
    }

    @PostMapping("chi-tiet-hd/add")
    public String add(@ModelAttribute ChiTietHoaDon cthd, @RequestParam Integer idHoaDon,
                      @RequestParam Integer idSPCT){
        HoaDon hd = hoaDonRepo.findById(idHoaDon).orElse(null);
        ChiTietSanPham ctsp = chiTietSanPhamRepo.findById(idSPCT).orElse(null);
        cthd.setHD(hd);
        cthd.setChiTietSanPham(ctsp);
        chiTietHoaDonRepo.save(cthd);

        return "redirect:/chi-tiet-hd/hien-thi";
    }

    @GetMapping("chi-tiet-hd/viewUpdate/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model){
        model.addAttribute("cthd", chiTietHoaDonRepo.findById(id).get());
        model.addAttribute("ListHD", hoaDonRepo.findAll());
        model.addAttribute("ListCTHD", chiTietSanPhamRepo.findAll());

        return "CTHD/update";
    }

    @PostMapping("chi-tiet-hd/update/{id}")
    public String update(@ModelAttribute ChiTietHoaDon cthd, @RequestParam Integer idHoaDon,
                      @RequestParam Integer idSPCT){
        HoaDon hd = hoaDonRepo.findById(idHoaDon).orElse(null);
        ChiTietSanPham ctsp = chiTietSanPhamRepo.findById(idSPCT).orElse(null);
        cthd.setHD(hd);
        cthd.setChiTietSanPham(ctsp);
        chiTietHoaDonRepo.save(cthd);

        return "redirect:/chi-tiet-hd/hien-thi";
    }

    @GetMapping("chi-tiet-hd/delete/{id}")
    public String delete(@PathVariable Integer id){
        chiTietHoaDonRepo.deleteById(id);

        return "redirect:/chi-tiet-hd/hien-thi";
    }
}
