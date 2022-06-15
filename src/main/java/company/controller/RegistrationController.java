package company.controller;

import com.google.common.hash.Hashing;
import company.entity.Consumer;
import company.entity.Role;
import company.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
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
    public String regGet(){
        return "sign-up";
    }

    @PostMapping("/sign-up")
    public String regPost(@RequestParam String username,
                          @RequestParam String password,
                          Model model){
        String hash = Hashing.sha256()
                .hashString(password, StandardCharsets.UTF_8)
                .toString();
        Consumer consumer = new Consumer(username, password);
        System.out.println(consumerRepo.findConsumerByUsername("admin") != null);
        if(consumerRepo.findConsumerByUsername(username) != null){
            return "/error";
        }
        else{
            consumer.setActive(true);
            consumer.setRoles(Role.USER);
            consumerRepo.save(consumer);
            return "/login";
        }
    }
}
