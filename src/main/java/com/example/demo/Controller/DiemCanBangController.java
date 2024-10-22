package com.example.demo.Controller;

import com.example.demo.Entity.DiemCanBang;
import com.example.demo.Repository.DiemCanBangRepo;
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
@RequestMapping("/diemCanBang")
public class DiemCanBangController {

    @Autowired
    private DiemCanBangRepo diemCanBangRepository;

    @GetMapping
    public String getAllDiemCanBang(Model model) {
        List<DiemCanBang> diemCanBangList = diemCanBangRepository.findAll();
        model.addAttribute("diemCanBangList", diemCanBangList);
        return "DiemCanBang/index"; // tên file JSP
    }

    @GetMapping("/create")
    public String createDiemCanBangForm(Model model) {
        model.addAttribute("diemCanBang", new DiemCanBang());
        return "DiemCanBang/add"; // tên file JSP cho tạo mới
    }

    @PostMapping("/create")
    public String createDiemCanBang(@ModelAttribute DiemCanBang diemCanBang) {
        diemCanBangRepository.save(diemCanBang);
        return "redirect:/diemCanBang";
    }

    @GetMapping("/update/{id}")
    public String editDiemCanBangForm(@PathVariable int id, Model model) {
        DiemCanBang diemCanBang = diemCanBangRepository.findById(id).orElse(null);
        model.addAttribute("diemCanBang", diemCanBang);
        return "DiemCanBang/update"; // tên file JSP cho chỉnh sửa
    }

    @PostMapping("/update")
    public String updateDiemCanBang(@ModelAttribute DiemCanBang diemCanBang) {
        diemCanBangRepository.save(diemCanBang);
        return "redirect:/diemCanBang";
    }

    @GetMapping("/delete/{id}")
    public String deleteDiemCanBang(@PathVariable int id) {
        diemCanBangRepository.deleteById(id);
        return "redirect:/diemCanBang";
    }
}
