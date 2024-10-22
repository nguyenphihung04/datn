package com.example.demo.Controller;

import com.example.demo.Entity.Voucher;
import com.example.demo.Repository.VoucherRepo;
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
public class VoucherController {

    @Autowired
    private VoucherRepo voucherRepo;

    @GetMapping("/voucher")
    public String index(Model model) {
        List<Voucher> vouchers = voucherRepo.findAll();
        model.addAttribute("vouchers", vouchers);
        return "index";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("voucher", new Voucher());
        return "add";
    }

    @PostMapping("/add")
    public String addVoucher(@ModelAttribute Voucher voucher) {
        voucherRepo.save(voucher);
        return "redirect:/vouchers";
    }

    @GetMapping("/update/{id}")
    public String updateForm(@PathVariable int id, Model model) {
        Voucher voucher = voucherRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Voucher not found"));
        model.addAttribute("voucher", voucher);
        return "update";
    }

    @PostMapping("/update/{id}")
    public String updateVoucher(@PathVariable int id, @ModelAttribute Voucher voucher) {
        voucher.setId(id); // Set the ID for the update
        voucherRepo.save(voucher);
        return "redirect:/vouchers";
    }

    @GetMapping("/delete/{id}")
    public String deleteVoucher(@PathVariable int id) {
        voucherRepo.deleteById(id);
        return "redirect:/vouchers";
    }
}