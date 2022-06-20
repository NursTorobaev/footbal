package company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EachEventController {
    @GetMapping("/eachEvent")
    public String eachEvent(Model model){
        return "eachEvent";
    }
}
