package com.example.demo.Controller;

import com.example.demo.Entity.Loai;
import com.example.demo.Repository.LoaiRepo;
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
public class LoaiController {

    @Autowired
    private LoaiRepo loaiRepo;

    @GetMapping("loai/hien-thi")
    public String index(Model model) {
        List<Loai> loais = loaiRepo.findAll();
        model.addAttribute("data", loais);
        return "loai/hienthi";
    }
    @GetMapping("loai/create")
    public String createForm(Model model) {
        model.addAttribute("data", new Loai());
        return "loai/add";
    }

    @PostMapping("loai/create")
    public String create(@ModelAttribute("data") Loai loai) {
        System.out.println(loai);
        loaiRepo.save(loai);
        return "redirect:/nguoi-dung/hien-thi";
    }

    @GetMapping("loai/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
//        List loai = loaiRepo.findById(id).orElse(null);
//        if (loai != null) {
            model.addAttribute("data", "");
            return "loai/edit";
//        }
//        return "redirect:/loai/hien-thi";
    }


    @PostMapping("loai/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute("data") Loai loai) {
        loai.setId(id);
        loaiRepo.save(loai);
        return "redirect:/loai/hien-thi";
    }

    @GetMapping("loai/delete/{id}")
    public String delete(@PathVariable Integer id) {
        loaiRepo.deleteById(id);
        return "redirect:/loai/hien-thi";
    }

}
