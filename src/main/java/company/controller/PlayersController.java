package company.controller;

import company.repos.PlayerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class PlayersController {

    @Autowired
    private PlayerRepo playerRepo;

    @GetMapping("/players")
    public String playersGet(Model model){
        model.addAttribute("players", playerRepo.findAll());
        return "players";
    }
}
