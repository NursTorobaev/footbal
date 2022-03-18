package com.company.spring.security.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home(Map<String, Object> model){
        return "home";
    }
}
