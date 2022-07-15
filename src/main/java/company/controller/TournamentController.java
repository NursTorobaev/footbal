package company.controller;

import company.repos.MatchRepo;
import company.repos.TournamentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class TournamentController {
    @Autowired
    private TournamentRepo tournamentRepo;

    public TournamentController() {
    }

    @GetMapping("/tournament")
    public String getTournament(Model model){
        model.addAttribute("events", tournamentRepo.findAll());
        return "/tournament";
    }
}
