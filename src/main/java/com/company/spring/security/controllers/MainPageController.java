package com.company.spring.security.controllers;

import com.company.spring.security.api.Consumer;
import com.company.spring.security.api.Message;
import com.company.spring.security.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainPageController {
    @Autowired
    private MessageRepo messageRepo;

    @GetMapping("/main")
    public String mainPage(@RequestParam(required = false, defaultValue = "") String filter,
            Map<String, Object> model){
        Iterable<Message> messages;
        if(filter != null && !filter.isEmpty()){
            messages = messageRepo.findByTag(filter);
        }
        else{
            messages = messageRepo.findAll();
        }
        model.put("messages", messages);
        model.put("filter", filter);
        return "main";
    }
    @PostMapping("/main")
    public String mainPost(
            @AuthenticationPrincipal Consumer consumer,
            @RequestParam String text,
            @RequestParam String tag,
            Map<String, Object> model){
        Message message = new Message(text, tag, consumer);

        messageRepo.save(message);
        Iterable<Message> messages=  messageRepo.findAll();
        model.put("messages", messages);
        return "main";
    }
}
