package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("hnh-shop")
public class BanHangController {
    @GetMapping("/trang-chu")
    public String view(
            Model model) {

        return "ban-hang";
    }
}
