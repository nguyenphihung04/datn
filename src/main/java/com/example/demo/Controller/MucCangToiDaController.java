package com.example.demo.Controller;

import com.example.demo.Entity.MucCangToiDa;
import com.example.demo.Repository.MucCangToiDaRepo;
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
@RequestMapping("/mucCangToiDa")
public class MucCangToiDaController {

    @Autowired
    private MucCangToiDaRepo mucCangToiDaRepository;

    @GetMapping
    public String getAllMucCangToiDa(Model model) {
        List<MucCangToiDa> mucCangToiDaList = mucCangToiDaRepository.findAll();
        model.addAttribute("mucCangToiDaList", mucCangToiDaList);
        return "MucCangToiDa/index"; // tên file JSP
    }

    @GetMapping("/add")
    public String createMucCangToiDaForm(Model model) {
        model.addAttribute("mucCangToiDa", new MucCangToiDa());
        return "MucCangToiDa/add"; // tên file JSP cho tạo mới
    }

    @PostMapping("/add")
    public String createMucCangToiDa(@ModelAttribute MucCangToiDa mucCangToiDa) {
        mucCangToiDaRepository.save(mucCangToiDa);
        return "redirect:/mucCangToiDa";
    }

    @GetMapping("/update/{id}")
    public String updateMucCangToiDaForm(@PathVariable int id, Model model) {
        MucCangToiDa mucCangToiDa = mucCangToiDaRepository.findById(id).orElse(null);
        model.addAttribute("mucCangToiDa", mucCangToiDa);
        return "MucCangToiDa/update"; // tên file JSP cho chỉnh sửa
    }

    @PostMapping("/update")
    public String updateMucCangToiDa(@ModelAttribute MucCangToiDa mucCangToiDa) {
        mucCangToiDaRepository.save(mucCangToiDa);
        return "redirect:/mucCangToiDa";
    }

    @GetMapping("/delete/{id}")
    public String deleteMucCangToiDa(@PathVariable int id) {
        mucCangToiDaRepository.deleteById(id);
        return "redirect:/mucCangToiDa";
    }
}
