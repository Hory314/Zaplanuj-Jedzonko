package pl.coderslab.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping("/")
    public String LandingPageController(){
        return "index";
    }

    @GetMapping("/contact")
    public String ContactController(){
        return "contact";
    }

    @GetMapping("/about")
    public String AboutController(){
        return "about";
    }
}
