package com.example.NguyenHoangThien;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {
    @GetMapping("/")
    public String index() {
        return "index"; // Trả về tên file index.html trong thư mục templates
    }
}
