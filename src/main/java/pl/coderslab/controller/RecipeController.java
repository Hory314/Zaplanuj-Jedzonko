package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.*;
import pl.coderslab.service.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/recipes")
public class RecipeController {

    @Autowired
    private RecipeService recipeService;

    @Autowired
    private RecipePlanService recipePlanService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private PlanService planService;

    @Autowired
    private DayNameService dayNameService;

    @GetMapping("")
    public String recipesList(Model model, Principal principal){
        Admin user = adminService.findAdminByEmail(principal.getName());
        model.addAttribute("user",user);
        model.addAttribute("recipes", recipeService.findAllRecipesByUserId(user.getId()));
        return "recipe/recipesList";
    }

    @GetMapping("/add")
    public String addRecipeForm(Model model, Principal principal){
        Admin user = adminService.findAdminByEmail(principal.getName());
        Recipe recipe = new Recipe();
        model.addAttribute("recipe", recipe);
        model.addAttribute("user",user);
        return "recipe/addRecipe";
    }

    @PostMapping("/add")
    public String addRecipe (@ModelAttribute @Valid Recipe recipe, BindingResult result) {
        if (result.hasErrors()) {
            return "recipe/addRecipe";
        }
        recipeService.save(recipe);
        return "redirect:../recipes";
    }

    @GetMapping("/plan/add")
    public String addRecipeToPlanForm(Model model, Principal principal){
        Admin user = adminService.findAdminByEmail(principal.getName());
        RecipePlan recipePlan = new RecipePlan();
        List<Plan> plans = planService.findPlansByUserId(user.getId());
        List<DayName> days = dayNameService.findAll();
        List<Recipe> recipes = recipeService.findAllRecipesByUserId(user.getId());
        model.addAttribute("recipePlan",recipePlan);
        model.addAttribute("plans", plans);
        model.addAttribute("days", days);
        model.addAttribute("recipes", recipes);
        model.addAttribute("user",user);
        return "recipe/addRecipeToPlan";
    }

    @PostMapping("/plan/add")
    public String addRecipeToPlan (@ModelAttribute @Valid RecipePlan recipePlan, BindingResult result) {
        if (result.hasErrors()) {
            return "recipe/addRecipeToPlan";
        }
        recipePlanService.save(recipePlan);
        return "redirect:../plan/add";
    }


}
