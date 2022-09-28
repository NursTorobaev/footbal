package company.controller;

import company.entity.Consumer;
import company.entity.Match;
import company.entity.Tournament;
import company.repos.MatchRepo;
import company.repos.TournamentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@PreAuthorize("hasAuthority('USER') or hasAuthority('ADMIN')")
public class EachEventController {

    @Autowired
    private MatchRepo matchRepo;
    @Autowired
    private TournamentRepo tournamentRepo;
    @GetMapping("/eachEvent/{id}")
    public String eachEvent(@PathVariable("id") Long id, Authentication authentication, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        model.addAttribute("consumer", consumer.getRoles().toString());
        Optional<Tournament> tournament = tournamentRepo.findById(id);
        model.addAttribute("selectedEvent", tournament);
        model.addAttribute("teams", tournament.get().getTeams());
        List<Match> mats = (List<Match>) matchRepo.findAll();
        List<Match> matches = new ArrayList<>();
        for(Match match : mats){
            if(match.getTournament().getId() == id){
                matches.add(match);
            }
        }
        model.addAttribute("matches", matches);
        return "eachEvent";
    }
}
