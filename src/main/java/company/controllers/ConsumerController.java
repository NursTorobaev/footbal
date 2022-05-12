package company.controllers;

import company.api.Consumer;
import company.api.Role;
import company.repos.ConsumerRepo;
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
    public String ConsumerList(Model model) {
        model.addAttribute("consumers", consumerRepo.findAll());
        return "consumerList";
    }
}