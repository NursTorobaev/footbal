package com.company.spring.security.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CalendarController {
    @GetMapping("/calendar")
    public String getCalendar(){
        return "calendar";
    }
}
