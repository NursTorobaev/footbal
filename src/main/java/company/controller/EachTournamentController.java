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
@PreAuthorize("hasAuthority('ADMIN')")
public class EachTournamentController {
    @Autowired
    private TournamentRepo tournamentRepo;
    @GetMapping("/eachTournament/{id}")
    public String eachGet(Authentication authentication, @PathVariable("id") Long id, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        model.addAttribute("consumer", consumer.getRoles().toString());
        Optional<Tournament> tournament = tournamentRepo.findById(id);
        model.addAttribute("selectedEvent", tournamentRepo.findById(id));
        model.addAttribute("teams", tournament.get().getTeams());
        return "eachTournament";
    }
}
