package company.controller;

import company.entity.Team;
import company.repos.TeamRepo;
import io.swagger.models.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/team_add")
public class TeamAddController {
    @Autowired
    private TeamRepo teamRepo;

    @GetMapping
    public String teamAdd(Model model){
        return "/team_add";
    }
    @PostMapping
    public String postTeams(HttpServletRequest request, Model model) {
        Team team = new Team(request.getParameter("teamName"), request.getParameter("departmentName"), (short) 0, (short) 0);
        team.setDraws((short)0);
        team.setGoals((short)0);
        team.setLoses((short)0);
        team.setWins((short)0);
        teamRepo.save(team);
        return "redirect:team";
    }
}
