package company.controllers;

import company.api.Consumer;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.security.core.Authentication;

import java.util.Map;

@Controller
@PreAuthorize("hasAuthority('ADMIN') or hasAuthority('USER')")
public class HomeController {

    @GetMapping("/")
    public String home(Authentication authentication, Map<String, String> model) {
        Consumer consumer = (Consumer) authentication.getPrincipal();
        String role = consumer.getRoles().toString();
        model.put("consumer", role);
        return "home";
    }
}
