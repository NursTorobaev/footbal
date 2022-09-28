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
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class EachTournamentController {
    @Autowired
    private TournamentRepo tournamentRepo;

    @Autowired
    private MatchRepo matchRepo;

    @GetMapping("/tournament/{id}")
    public String eachGet(Authentication authentication, @PathVariable("id") Long id, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        model.addAttribute("consumer", consumer.getRoles().toString());
        Optional<Tournament> tournament = tournamentRepo.findById(id);
        model.addAttribute("selectedEvent", tournamentRepo.findById(id));
        model.addAttribute("teams", tournament.get().getTeams());
        List<Match> mats = (List<Match>) matchRepo.findAll();
        List<Match> matches = new ArrayList<>();
        for(Match match : mats){
            if(match.getTournament().getId() == id){
                matches.add(match);
            }
        }
        model.addAttribute("matches", matches);
        return "eachTournament";
    }
    @RequestMapping(value = "/tournament/{id}", method = RequestMethod.POST)
    public String eachPost(@PathVariable("id") long id, @RequestParam String firstTeam, @RequestParam String secondTeam){
        Tournament tournament = new Tournament();
        List<Tournament> tournaments = (List<Tournament>) tournamentRepo.findAll();
        for(Tournament tour:tournaments){
            if (tour.getId() == id) tournament = tour;
        }
        Match match = new Match(firstTeam, secondTeam, 0, 0, tournament);
        matchRepo.save(match);
        return "eachTournament";
    }
}
