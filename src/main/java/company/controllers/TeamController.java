package company.controllers;

import company.repos.TeamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/team")
@PreAuthorize("hasAuthority('ADMIN')")
public class TeamController {
    @Autowired
    private TeamRepo teamRepo;

    @GetMapping
    public String teamList(Model model) {
        model.addAttribute("teams", teamRepo.findAll());
        return "team";
    }
}
