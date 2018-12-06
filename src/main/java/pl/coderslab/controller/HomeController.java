package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Admin;
import pl.coderslab.model.Plan;
import pl.coderslab.service.AdminService;
import pl.coderslab.service.PlanService;
import pl.coderslab.service.RecipeService;

import java.security.Principal;

@Controller
@RequestMapping("/")
public class HomeController
{
    @Autowired
    AdminService adminService;

    @Autowired
    RecipeService recipeService;

    @Autowired
    PlanService planService;

    @GetMapping("/") // also dashboard controller
    public String LandingPageController(Principal principal, Model model)
    {
        // you can add Principal wherever you need like above,
        // and use AdminService.findAdminByEmail(principal.getName()) to get logged user object
        model.addAttribute("logged_user", principal);

        if (principal != null) // add additional attributes if user is logged
        {
            Admin user = adminService.findAdminByEmail(principal.getName());
            model.addAttribute("user", user);
            model.addAttribute("recipes_count", recipeService.getUserRecipesCount(user.getId()));
            model.addAttribute("plans_count", planService.getUserPlansCount(user.getId()));
            Plan p = new Plan();
            Admin a = new Admin();
            a.setId(2L);
            p.setAdmin(a);
            p.setId(1L);
            p.setDescription("jakis opis");
            p.setName("nowy plaaaan");
            model.addAttribute("last_plan", p/*planService.getLastUserPlan(user.getId())*/);
        }

        return "index";
    }

    @GetMapping("/contact")
    public String ContactController()
    {
        return "contact";
    }

    @GetMapping("/about")
    public String AboutController()
    {
        return "about";
    }
}
