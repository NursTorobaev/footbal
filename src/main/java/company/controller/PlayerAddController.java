package company.controller;

import company.entity.Player;
import company.repos.PlayerRepo;
import company.repos.TeamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class PlayerAddController {
    @Autowired
    private TeamRepo teamRepo;

    @Autowired
    private PlayerRepo playerRepo;

    @GetMapping("/player_add")
    public String playerAddGet(Model model){
        model.addAttribute("teams", teamRepo.findAll());
        return "/player_add";
    }

    @PostMapping("/player_add")
    public String playerAddPost(@RequestParam String name, @RequestParam int number, @RequestParam String birthday, @RequestParam String workPosition, @RequestParam String selectedTeam, @RequestParam String position){
        Player player = new Player(name, number, birthday, workPosition, position);
        player.setTeam(teamRepo.findByName(selectedTeam));
        playerRepo.save(player);
        return "redirect:/players";
    }
}
