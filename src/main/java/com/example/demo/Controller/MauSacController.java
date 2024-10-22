package com.example.demo.Controller;


import com.example.demo.Entity.MauSac;
import com.example.demo.Repository.MauSacRepo;
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
public class MauSacController {

    @Autowired
    private MauSacRepo mauSacRepo;

    @GetMapping("mau-sac/hien-thi")
    public String index(Model model) {
        List<MauSac> mauSacList = mauSacRepo.findAll();
        model.addAttribute("data", mauSacList);
        return "mau-sac/hienthi";
    }
    @GetMapping("mau-sac/create")
    public String createForm(Model model) {
        model.addAttribute("data", new MauSac());
        return "mau-sac/add";
    }

    @PostMapping("mau-sac/create")
    public String create(@ModelAttribute("data") MauSac mauSac) {
        System.out.println(mauSac);
        mauSacRepo.save(mauSac);
        return "redirect:/mau-sac/hien-thi";
    }

    @GetMapping("mau-sac/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        MauSac mauSac = mauSacRepo.findById(id).orElse(null);
        if (mauSac != null) {
            model.addAttribute("data", mauSac);
            return "mau-sac/edit";
        }
        return "redirect:/mau-sac/hien-thi";
    }


    @PostMapping("mau-sac/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute("data") MauSac mauSac) {
        mauSac.setId(id);
        mauSacRepo.save(mauSac);
        return "redirect:/mau-sac/hien-thi";
    }

    @GetMapping("mau-sac/delete/{id}")
    public String delete(@PathVariable Integer id) {
        mauSacRepo.deleteById(id);
        return "redirect:/mau-sac/hien-thi";
    }

}
