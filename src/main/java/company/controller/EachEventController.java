package company.controller;

import company.entity.Consumer;
import company.entity.Tournament;
import company.repos.TournamentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Optional;

@Controller
@PreAuthorize("hasAuthority('USER') or hasAuthority('ADMIN')")
public class EachEventController {
    @Autowired
    private TournamentRepo tournamentRepo;
    @GetMapping("/eachEvent/{id}")
    public String eachEvent(@PathVariable("id") Long id, Authentication authentication, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        Optional<Tournament> tournament = tournamentRepo.findById(id);
        model.addAttribute("consumer", consumer.getRoles().toString());
        model.addAttribute("selectedEvent", tournament);
        model.addAttribute("teams", tournament.get().getTeams());
        return "eachEvent";
    }
}
