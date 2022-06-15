package company.controller;

import company.repos.TournamentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TournamentController {
    @Autowired
    private TournamentRepo tournamentRepo;

    @GetMapping("/tournament")
    public String getTournament(Model model){
        model.addAttribute("events", tournamentRepo.findAll());
        return "/tournament";
    }
}
