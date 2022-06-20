package company.controller;

import company.entity.Team;
import company.entity.Tournament;
import company.repos.TeamRepo;
import company.repos.TournamentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class EventAddController {

    @Autowired
    private TeamRepo teamRepo;

    @Autowired
    private TournamentRepo tournamentRepo;

    @RequestMapping(value = "/event_add", method = RequestMethod.GET)
    public String eventGet(Model model) {
        List<Team> teams = (List<Team>) teamRepo.findAll();
        List<String> tms = new ArrayList<>();
        for (Team team:teams) {
            tms.add(team.getName());
        }
        model.addAttribute("teams", tms);
        return "/event_add";
    }

    @RequestMapping(value="/event_add", method = RequestMethod.POST)
    public String eventPost(@RequestParam String name, @RequestParam String dateFrom,
                            @RequestParam String dateTo,
                            @RequestParam("file") File file, HttpServletRequest request) throws ParseException {

        Tournament tournament = new Tournament(name, new SimpleDateFormat("yyyy-MM-dd").parse(dateFrom), new SimpleDateFormat("yyyy-MM-dd").parse(dateTo));
        String[] teamstring = request.getParameterValues("team");
        List<Team> teams = new ArrayList<>();
        for(String team: teamstring){
            Team curr = teamRepo.findByName(team);
            teams.add(curr);
        }
        System.out.println(teams);
        tournament.setTeams(teams);
        tournamentRepo.save(tournament);
        return "redirect:/tournament";
    }

}
