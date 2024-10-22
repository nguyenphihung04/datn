package com.example.demo.Controller;

import com.example.demo.Entity.HoaDon;
import com.example.demo.Entity.NguoiDung;
import com.example.demo.Entity.Voucher;
import com.example.demo.Repository.HoaDonRepo;
import com.example.demo.Repository.NguoiDungRepo;
import com.example.demo.Repository.VoucherRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HoaDonController {
    @Autowired
    VoucherRepo voucherRepo;

    @Autowired
    NguoiDungRepo nguoiDungRepo;

    @Autowired
    HoaDonRepo hoaDonRepo;

    @GetMapping("hoa-don/hien-thi")
    public String hienThi(Model model){
        model.addAttribute("ListVoucher", voucherRepo.findAll());
        model.addAttribute("ListNguoiDung", nguoiDungRepo.findAll());
        model.addAttribute("ListHD", hoaDonRepo.findAll());

        return "hoaDon/hienThi";
    }

    @PostMapping("hoa-don/add")
    public String add(@ModelAttribute HoaDon hd, @RequestParam Integer idVoucher,
                      @RequestParam Integer idNguoiDung){
        Voucher vch = voucherRepo.findById(idVoucher).orElse(null);
        NguoiDung nguoiDung = nguoiDungRepo.findById(idNguoiDung).orElse(null);
        hd.setVoucher(vch);
        hd.setNguoiDung(nguoiDung);
        hoaDonRepo.save(hd);

        return "redirect:/hoa-don/hien-thi";
    }

    @GetMapping("hoa-don/viewUpdate/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model){
        model.addAttribute("hoaDon", hoaDonRepo.findById(id).get());
        model.addAttribute("ListVoucher", voucherRepo.findAll());
        model.addAttribute("ListNguoiDung", nguoiDungRepo.findAll());
        return "hoaDon/update";
    }

    @PostMapping("hoa-don/update/{id}")
    public String update(@ModelAttribute HoaDon hd, @RequestParam Integer idVoucher,
                         @RequestParam Integer idNguoiDung){
        Voucher vch = voucherRepo.findById(idVoucher).orElse(null);
        NguoiDung nguoiDung = nguoiDungRepo.findById(idNguoiDung).orElse(null);
        hd.setVoucher(vch);
        hd.setNguoiDung(nguoiDung);
        hoaDonRepo.save(hd);
        return "redirect:/hoa-don/hien-thi";
    }

    @GetMapping("hoaDon/delete/{id}")
    public String delete(@PathVariable Integer id){
        hoaDonRepo.deleteById(id);
        return "redirect:/hoa-don/hien-thi";
    }
}
