package com.company.spring.security.controllers;

import com.company.spring.security.api.Consumer;
import com.company.spring.security.api.Role;
import com.company.spring.security.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegistrationController {
    @Autowired
    private ConsumerRepo consumerRepo;

    @GetMapping("/sign-up")
    public String regGet(){
        return "sign-up";
    }

    @PostMapping("/sign-up")
    public String regPost(@RequestParam String username,
                          @RequestParam String password,
                          Model model){
        Consumer consumer = new Consumer(username, password);
        if(consumerRepo.findConsumerByUsername(username) != null){
            return "redirect:/error";
        }
        consumer.setActive(true);
        consumer.setRoles(Role.USER);
        consumerRepo.save(consumer);
        return "redirect:/login";
    }
}
