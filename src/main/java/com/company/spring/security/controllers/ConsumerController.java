package com.company.spring.security.controllers;

import com.company.spring.security.api.Consumer;
import com.company.spring.security.api.Role;
import com.company.spring.security.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/consumer")
@PreAuthorize("hasAuthority('ADMIN')")
public class ConsumerController {
    @Autowired
    private ConsumerRepo consumerRepo;

    @GetMapping
    public String ConsumerList(Model model){
        model.addAttribute("consumers", consumerRepo.findAll());
        return "consumerList";
    }

    @GetMapping("{consumer}")
    public String consumerEdit(@PathVariable Consumer consumer, Model model){
        model.addAttribute("consumer", consumer);
        model.addAttribute("roles", Role.values());
        return "consumerEdit";
    }

    @PostMapping
    public String consumerSave(@RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("consumerId") Consumer consumer){
        consumer.setUsername(username);
        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name).
                collect(Collectors.toSet());
        consumer.getRoles().clear();
        for (String key : form.keySet()) {
            if(roles.contains(key)){
                consumer.getRoles().add(Role.valueOf(key));
            }
        }
        consumerRepo.save(consumer);
        return "redirect:/consumer";
    }
}