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
public class EveryTeamController {
    @Autowired
    private PlayerRepo playerRepo;
    @Autowired
    private TeamRepo teamRepo;

    @GetMapping("/every-team/{id}")
    public String everyTeam(@PathVariable("id") Long id, Authentication authentication, Model model){
        List<Player> playerList = (List<Player>) playerRepo.findAll();
        List<Player> players = new ArrayList<>();
        Optional<Team> team = teamRepo.findById(id);
        Consumer consumer = (Consumer) authentication.getPrincipal();
        model.addAttribute("consumer", consumer.getRoles().toString());
        model.addAttribute("team", team);
        for(Player player: playerList){
            if(Objects.equals(player.getTeam().getName(), team.get().getName())){
                players.add(player);
            }
        }
        model.addAttribute("players", players);
        return "/everyTeam";
    }
}
