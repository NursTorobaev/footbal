package company.controller;

import company.entity.Consumer;
import company.repos.PlayerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@PreAuthorize("hasAuthority('USER') or hasAuthority('ADMIN')")
public class ParticipantController {
    @Autowired
    private PlayerRepo playerRepo;

    @GetMapping("/participants")
    public String participantsGet(Authentication authentication, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        String role = consumer.getRoles().toString();
        model.addAttribute("consumer", role);
        model.addAttribute("players", playerRepo.findAll());
        return "/participants";
    }
}
