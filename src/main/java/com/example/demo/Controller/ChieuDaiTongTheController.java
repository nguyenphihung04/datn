package com.example.demo.Controller;


import com.example.demo.Entity.ChieuDaiTongThe;
import com.example.demo.Repository.ChieuDaiTongTheRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ChieuDaiTongTheController {

    @Autowired
    private ChieuDaiTongTheRepo chieuDaiTongTheRepo;

    @GetMapping("/chieudaitongthe/hienthi")
    public String hienThi(Model model) {
        model.addAttribute("listChieuDai", chieuDaiTongTheRepo.findAll());
        return "chieudaitongthe/index";  // Trả về view index.jsp
    }

    @GetMapping("/chieudaitongthe/add")
    public String showAddForm(Model model) {
        ChieuDaiTongThe chieuDaiTongThe = new ChieuDaiTongThe();
        model.addAttribute("chieuDaiTongThe", chieuDaiTongThe);
        return "chieudaitongthe/add"; // Đảm bảo đường dẫn đúng
    }

    @PostMapping("/chieudaitongthe/add")
    public String addChieuDai(@ModelAttribute("chieuDaiTongThe") ChieuDaiTongThe chieuDaiTongThe) {
        chieuDaiTongTheRepo.save(chieuDaiTongThe); // Lưu dữ liệu vào database
        return "redirect:/chieudaitongthe/hienthi"; // Chuyển hướng đến danh sách
    }

    @GetMapping("/chieudaitongthe/delete/{id}")
    public String delete(@PathVariable Integer id) {
        chieuDaiTongTheRepo.deleteById(id);
        return "redirect:/chieudaitongthe/hienthi";  // Chuyển hướng về danh sách
    }

    @GetMapping("/chieudaitongthe/view-update/{id}")
    public String viewUpdate(@PathVariable Integer id, Model model) {
        ChieuDaiTongThe chieuDaiTongThe = chieuDaiTongTheRepo.findById(id).orElse(null);
        model.addAttribute("cd", chieuDaiTongThe); // Đối tượng hiện tại
        model.addAttribute("chieuDaiTongThe", chieuDaiTongThe); // Đối tượng cho form
        return "chieudaitongthe/edit";  // Trả về view edit.jsp
    }

    @PostMapping("/chieudaitongthe/update/{id}")
    public String update(@PathVariable Integer id, @ModelAttribute ChieuDaiTongThe chieuDaiTongThe) {
        if (chieuDaiTongTheRepo.existsById(id)) { // Kiểm tra nếu bản ghi tồn tại
            chieuDaiTongThe.setId(id); // Đặt ID để cập nhật
            chieuDaiTongTheRepo.save(chieuDaiTongThe);
        }
        return "redirect:/chieudaitongthe/hienthi"; // Chuyển hướng về danh sách
    }
}
