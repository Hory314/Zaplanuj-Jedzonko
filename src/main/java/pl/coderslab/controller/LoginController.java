package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.dto.LoginDTO;

@Controller
@RequestMapping("/login")
public class LoginController
{
    @GetMapping
    public String prepareLogin(Model m)
    {
        m.addAttribute("newLogin", new LoginDTO());
        return "user/login";
    }
}
