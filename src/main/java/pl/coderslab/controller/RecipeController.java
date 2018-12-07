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
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dto.RecipeDTO;
import pl.coderslab.model.Admin;
import pl.coderslab.model.Recipe;
import pl.coderslab.service.AdminService;
import pl.coderslab.service.RecipeService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import javax.validation.constraints.Null;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/recipes")
public class RecipeController
{

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

    @GetMapping
    public String recipesList(Model model, Principal principal)
    {
        if (principal != null) // if user logged, show his recipes
        {
            Admin user = adminService.findAdminByEmail(principal.getName());
            model.addAttribute("user", user);
            model.addAttribute("recipes", recipeService.findAllRecipesByUserId(user.getId()));
            return "recipe/recipesList";
        }
        else // if not logged, show recipes of all users
        {
            model.addAttribute("recipes", recipeService.findAll());
            return "recipe/allRecipes";
        }
    }

    @GetMapping("/add")
    public String addRecipeForm(Model model, Principal principal)
    {
        Admin user = adminService.findAdminByEmail(principal.getName());
        Recipe recipe = new Recipe();
        model.addAttribute("recipe", recipe);
        model.addAttribute("user", user);
        return "recipe/addRecipe";
    }

    @PostMapping("/add")
    public String addRecipe (@ModelAttribute @Valid Recipe recipe, Principal principal, BindingResult result)
    {
        if (result.hasErrors())
        {
            return "recipe/addRecipe";
        }
        Admin user = adminService.findAdminByEmail(principal.getName());
        recipe.setAdmin(user);
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


    @GetMapping("/{id}")
    public String recipeDetails(@PathVariable Long id, Model model, Principal principal)
    {
        try
        {
            if (principal != null)
            {

                Admin user = adminService.findAdminByEmail(principal.getName());
                RecipeDTO recipeDTO = recipeService.getOneIfUserCan(id, user.getId()); // if null... (recipe not exist or user not allowed)
                model.addAttribute("recipe", recipeDTO);
                return "recipe/details";
            }
            else
            {
                RecipeDTO recipeDTO = recipeService.getOne(id);
                model.addAttribute("recipe", recipeDTO);
                return "recipe/mainDetails";
            }
        }
        catch (NullPointerException | EntityNotFoundException e)
        {
            //e.printStackTrace();
            return "dashboard/403"; // ... then catched and error site displayed
        }
    }
}
