package com.example.demo.Controller;


import com.example.demo.Entity.NguoiDung;
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

@Controller
@RequestMapping("hnh-shop")
public class NguoiDungController {

    @Autowired
    private NguoiDungRepo nguoiDungRepo;

    @GetMapping("nguoi-dung/hien-thi")
    public String index(Model model) {
        List<NguoiDung> nguoiDungs = nguoiDungRepo.findAll();
        model.addAttribute("data", nguoiDungs);
        return "nguoi-dung/hienthi";
    }
    @GetMapping("nguoi-dung/create")
    public String createForm(Model model) {
        model.addAttribute("data", new NguoiDung());
        return "do-cung/add";
    }

    @PostMapping("nguoi-dung/create")
    public String create(@ModelAttribute("data") NguoiDung nguoiDung) {
        System.out.println(nguoiDung);
        nguoiDungRepo.save(nguoiDung);
        return "redirect:/nguoi-dung/hien-thi";
    }

    @GetMapping("nguoi-dung/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        NguoiDung nguoiDung = nguoiDungRepo.findById(id).orElse(null);
        if (nguoiDung != null) {
            model.addAttribute("data", nguoiDung);
            return "nguoi-dung/edit";
        }
        return "redirect:/nguoi-dung/hien-thi";
    }


    @PostMapping("nguoi-dung/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute("data") NguoiDung nguoiDung) {
        nguoiDung.setId(id);
        nguoiDungRepo.save(nguoiDung);
        return "redirect:/nguoi-dung/hien-thi";
    }

    @GetMapping("nguoi-dung/delete/{id}")
    public String delete(@PathVariable Integer id) {
        nguoiDungRepo.deleteById(id);
        return "redirect:/nguoi-dung/hien-thi";
    }


}
