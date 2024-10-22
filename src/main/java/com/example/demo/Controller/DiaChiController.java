package com.example.demo.Controller;


import com.example.demo.Entity.DiaChi;
import com.example.demo.Entity.Loai;
import com.example.demo.Repository.DiaChiRepo;
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
public class DiaChiController {

    @Autowired
    private DiaChiRepo diaChiRepo;

    @GetMapping("dia-chi/hien-thi")
    public String index(Model model) {
        List<DiaChi> diaChis = diaChiRepo.findAll();
        model.addAttribute("data", diaChis);
        return "dia-chi/hienthi";
    }
    @GetMapping("dia-chi/create")
    public String createForm(Model model) {
        model.addAttribute("data", new Loai());
        return "dia-chi/add";
    }

    @PostMapping("dia-chi/create")
    public String create(@ModelAttribute("data") DiaChi diaChi) {
        System.out.println(diaChi);
        diaChiRepo.save(diaChi);
        return "redirect:/dia-chi/hien-thi";
    }

    @GetMapping("dia-chi/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
//        List diaChi = diaChiRepo.findById(id.toString()).orElse(null);
//        if (loai != null) {
        model.addAttribute("data", "");
//        return "loai/edit";
//        }
        return "redirect:/dia-chi/hien-thi";
    }


    @PostMapping("dia-chi/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute("data") DiaChi diaChi) {
        diaChi.setId(id);
        diaChiRepo.save(diaChi);
        return "redirect:/dia-chi/hien-thi";
    }

    @GetMapping("/dia-chi/delete/{id}")
    public String delete(@PathVariable Integer id) {
        diaChiRepo.deleteById(id);
        return "redirect:/dia-chi/hien-thi";
    }
}
