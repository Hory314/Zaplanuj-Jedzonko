package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Admin;
import pl.coderslab.model.Recipe;
import pl.coderslab.service.AdminService;
import pl.coderslab.service.RecipeService;

import javax.validation.Valid;
import java.security.Principal;

@Controller
@RequestMapping("/recipes")
public class RecipeController {

    @Autowired
    private RecipeService recipeService;

    @Autowired
    AdminService adminService;

    @GetMapping("")
    public String recipesList(Model model, Principal principal)
    {
        Admin user = adminService.findAdminByEmail(principal.getName());
        model.addAttribute("user",user);
        model.addAttribute("recipes", recipeService.findAllRecipesByUserId(user.getId()));
        return "recipe/recipesList";
    }

    @GetMapping("/add")
    public String addRecipeForm(Model model, Principal principal)
    {
        Admin user = adminService.findAdminByEmail(principal.getName());
        Recipe recipe = new Recipe();
        model.addAttribute("recipe", recipe);
        model.addAttribute("user",user);
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

}
