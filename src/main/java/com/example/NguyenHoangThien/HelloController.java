package com.example.NguyenHoangThien;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String index() {
        return "Chào Thiện! App Spring Boot đã chạy thành công trong Docker rồi nhé!";
    }
}