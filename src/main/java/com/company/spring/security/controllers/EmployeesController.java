package com.company.spring.security.controllers;

import com.company.spring.security.api.Employees;
import com.company.spring.security.repos.EmployeesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.xml.crypto.Data;
import java.util.Date;

@Controller
public class EmployeesController {

    @Autowired
    private EmployeesRepo employeesRepo;

    @GetMapping("/employees")
    private String getEmployees(){
        return "employees";
    }

    @PostMapping("/employees")
    public String consumerSave(@RequestParam String full_name,
                               @RequestParam String address,
                               @RequestParam String number,
                               @RequestParam String position,
                               @RequestParam Data birthday, Model model){
        Employees employee = new Employees(full_name, address, number, (Date) birthday, position);
        employeesRepo.save(employee);
        return "redirect:main";
    }
}
