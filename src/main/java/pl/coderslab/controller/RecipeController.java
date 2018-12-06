package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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

@Controller
@RequestMapping("/recipes")
public class RecipeController
{

    @Autowired
    private RecipeService recipeService;

    @Autowired
    AdminService adminService;

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
    public String addRecipe(@ModelAttribute @Valid Recipe recipe, BindingResult result)
    {
        if (result.hasErrors())
        {
            return "recipe/addRecipe";
        }
        recipeService.save(recipe);
        return "redirect:../recipes";
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
