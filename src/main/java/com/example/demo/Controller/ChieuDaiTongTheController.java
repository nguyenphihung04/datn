package com.example.demo.Controller;


import com.example.demo.Entity.ChieuDaiTongThe;
import com.example.demo.Repository.ChieuDaiTongTheRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ChieuDaiTongTheController {

    @Autowired
    ChieuDaiTongTheRepo chieuDaiTongTheRepo;

    @GetMapping("chieudai/hienthi")
    public String hienThi(Model model){
        model.addAttribute("listChieuDai", chieuDaiTongTheRepo.findAll());
        return "hienthi";
    }

    @PostMapping("chieudai/add")
    public String add(ChieuDaiTongThe chieuDaiTongThe){
        chieuDaiTongTheRepo.save(chieuDaiTongThe);
        return "redirect:/chieudai/hienthi";
    }

    @GetMapping("chieudai/delete/{id}")
    public String delete(@PathVariable Integer id){
        chieuDaiTongTheRepo.deleteById(id);
        return "redirect:/chieudai/hienthi";
    }

    @GetMapping("chieudai/view-update/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model){
        model.addAttribute("cd", chieuDaiTongTheRepo.findById(id).get());
        return "chieudai/update";
    }
    @PostMapping("chieudai/update/{id}")
    public String update(ChieuDaiTongThe chieuDaiTongThe){
        chieuDaiTongTheRepo.save(chieuDaiTongThe);
        return "redirect:/chieudai/hienthi";
    }
}
