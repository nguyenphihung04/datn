package com.example.demo.Controller;


import com.example.demo.Entity.DoCungThan;
import com.example.demo.Repository.DoCungThanRepo;
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
public class DoCungController {

    @Autowired
    private DoCungThanRepo cungThanRepo;

    @GetMapping("do-cung-than/hien-thi")
    public String index(Model model) {
        List<DoCungThan> doCungThanList = cungThanRepo.findAll();
        model.addAttribute("data", doCungThanList);
        return "do-cung/hienthi";
    }
    @GetMapping("do-cung-than/create")
    public String createForm(Model model) {
        model.addAttribute("data", new DoCungThan());
        return "do-cung/add";
    }

    @PostMapping("do-cung-than/create")
    public String create(@ModelAttribute("data") DoCungThan doCungThan) {
        System.out.println(doCungThan);
        cungThanRepo.save(doCungThan);
        return "redirect:/do-cung-than/hien-thi";
    }

    @GetMapping("do-cung-than/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        DoCungThan cungThan = cungThanRepo.findById(id).orElse(null);
        if (cungThan != null) {
            model.addAttribute("data", cungThan);
            return "do-cung/edit";
        }
        return "redirect:/do-cung-than/hien-thi";
    }


    @PostMapping("do-cung-than/edit/{id}")
    public String edit(@PathVariable Integer id, @ModelAttribute("data") DoCungThan than) {
        than.setId(id);
        cungThanRepo.save(than);
        return "redirect:/do-cung-than/hien-thi";
    }

    @GetMapping("do-cung-than/delete/{id}")
    public String delete(@PathVariable Integer id) {
        cungThanRepo.deleteById(id);
        return "redirect:/do-cung-than/hien-thi";
    }
}
