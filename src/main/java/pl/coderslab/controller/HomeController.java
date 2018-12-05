package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping("/")
    public String LandingPageController(Principal principal, Model model){
        // you can add Principal wherever you need like above,
        // and use AdminService.findAdminByEmail(principal.getName()) to get logged user object
        model.addAttribute("logged_user", principal);
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
