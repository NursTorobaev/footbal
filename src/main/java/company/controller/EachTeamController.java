package company.controller;

import company.entity.Consumer;
import company.entity.Player;
import company.entity.Team;
import company.repos.PlayerRepo;
import company.repos.TeamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class EachTeamController {
    @Autowired
    private TeamRepo teamRepo;

    @Autowired
    private PlayerRepo playerRepo;

    @GetMapping("/team/{id}")
    public String eachTeamGet(@PathVariable("id") Long id, Authentication authentication, Model model){
        Consumer consumer = (Consumer) authentication.getPrincipal();
        model.addAttribute("consumer", consumer.getRoles().toString());
        List<Player> allPlayers = (List<Player>) playerRepo.findAll();
        Optional<Team> team = teamRepo.findById(id);
        List<Player> players = new ArrayList<>();
        String name = team.get().getName();
        for(Player player: allPlayers){
            if(Objects.equals(player.getTeam().getName(), name)){
                players.add(player);
            }
        }
        model.addAttribute("team", team);
        model.addAttribute("players", players);
        return "eachTeam";
    }
}
