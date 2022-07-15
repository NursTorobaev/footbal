package company.controller;

import company.entity.Consumer;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@PreAuthorize("hasAuthority('ADMIN') or hasAuthority('USER')")
@RequestMapping("/error")
public class ErrorController {
    @GetMapping
    public String getError(Authentication authentication, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        model.addAttribute("consumer", consumer.getRoles().toString());
        return "/error";
    }
}
