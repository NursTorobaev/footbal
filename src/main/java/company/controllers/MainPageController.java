package company.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@PreAuthorize("hasAuthority('ADMIN')")
public class MainPageController {

    @GetMapping("/main")
    public String mainPage(@RequestParam(required = false, defaultValue = "") String filter,
            Map<String, Object> model){
        return "main";
    }
}
