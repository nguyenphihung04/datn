package com.example.demo.Controller;

import com.example.demo.Entity.ChuViCanVot;
import com.example.demo.Repository.ChuViCanVotRepo;
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
@RequestMapping("/chuViCanVot")
public class ChuViCanVotController {

    @Autowired
    private ChuViCanVotRepo chuViCanVotRepository;

    @GetMapping
    public String getAllChuViCanVot(Model model) {
        List<ChuViCanVot> chuViCanVotList = chuViCanVotRepository.findAll();
        model.addAttribute("chuViCanVotList", chuViCanVotList);
        return "ChuViCanVot/index"; // tên file JSP
    }

    @GetMapping("/add")
    public String createChuViCanVotForm(Model model) {
        model.addAttribute("chuViCanVot", new ChuViCanVot());
        return "ChuViCanVot/add"; // tên file JSP cho tạo mới
    }

    @PostMapping("/add")
    public String createChuViCanVot(@ModelAttribute ChuViCanVot chuViCanVot) {
        chuViCanVotRepository.save(chuViCanVot);
        return "redirect:/chuViCanVot";
    }

    @GetMapping("/update/{id}")
    public String updateChuViCanVotForm(@PathVariable int id, Model model) {
        ChuViCanVot chuViCanVot = chuViCanVotRepository.findById(id).orElse(null);
        model.addAttribute("chuViCanVot", chuViCanVot);
        return "ChuViCanVot/update"; // tên file JSP cho chỉnh sửa
    }

    @PostMapping("/update")
    public String updateChuViCanVot(@ModelAttribute ChuViCanVot chuViCanVot) {
        chuViCanVotRepository.save(chuViCanVot);
        return "redirect:/chuViCanVot";
    }

    @GetMapping("/delete/{id}")
    public String deleteChuViCanVot(@PathVariable int id) {
        chuViCanVotRepository.deleteById(id);
        return "redirect:/chuViCanVot";
    }
}
