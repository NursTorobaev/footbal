package company.controller;

import com.google.common.hash.Hashing;
import company.entity.Consumer;
import company.entity.Role;
import company.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.nio.charset.StandardCharsets;

@Controller
public class RegistrationController {
    @Autowired
    private ConsumerRepo consumerRepo;

    @GetMapping("/sign-up")
    public String regGet() {
        return "sign-up";
    }

    @PostMapping("/sign-up")
    public String regPost(@RequestParam String username,
                          @RequestParam String password,
                          Model model) {
        Consumer consumer = new Consumer(username, password);
        if (consumerRepo.findConsumerByUsername(username) != null) {
            return "/error";
        } else {
            consumer.setActive(true);
            consumer.setRoles(Role.USER);
            consumerRepo.save(consumer);
            return "/login";
        }
    }
}
