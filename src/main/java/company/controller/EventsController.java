package company.controller;

import company.entity.Consumer;
import company.repos.TournamentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@PreAuthorize("hasAuthority('USER') or hasAuthority('ADMIN')")
@RequestMapping("/events")
public class EventsController {
    @Autowired
    private TournamentRepo tournamentRepo;
    @GetMapping
    public String events(Authentication authentication, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        String role = consumer.getRoles().toString();
        model.addAttribute("consumer", role);
        model.addAttribute("events", tournamentRepo.findAll());
        return "/events";
    }
}
