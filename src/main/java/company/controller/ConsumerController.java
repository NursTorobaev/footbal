package company.controller;

import company.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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