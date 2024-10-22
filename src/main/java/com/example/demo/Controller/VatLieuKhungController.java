package com.example.demo.Controller;

import com.example.demo.Entity.VatLieuKhung;
import com.example.demo.Repository.VatLieuKhungRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class VatLieuKhungController {

    @Autowired
    VatLieuKhungRepo vatLieuKhungRepo;

    @GetMapping("vatlieukhung/hienthi")
    public String hienThi(Model model){
        model.addAttribute("listVLK", vatLieuKhungRepo.findAll());
        return "hienthi";
    }

    @PostMapping("vatlieukhung/add")
    public String add(VatLieuKhung vlk){
        vatLieuKhungRepo.save(vlk);
        return "redirect:/vatlieukhung/hienthi";
    }

    @GetMapping("vatlieukhung/delete/{id}")
    public String delete(@PathVariable Integer id){
        vatLieuKhungRepo.deleteById(id);
        return "redirect:/vatlieukhung/hienthi";
    }

    @GetMapping("vatlieukhung/view-update/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model){
        model.addAttribute("vlk", vatLieuKhungRepo.findById(id).get());
        return "vatlieukhung/update";
    }
    @PostMapping("vatlieukhung/update/{id}")
    public String update(VatLieuKhung vatLieuKhung){
        vatLieuKhungRepo.save(vatLieuKhung);
        return "redirect:/vatlieukhung/hienthi";
    }
}
