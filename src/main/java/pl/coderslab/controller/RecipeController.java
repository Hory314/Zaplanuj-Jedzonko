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

//    Po wejściu na stronę _**/app/recipe/add**_ metodą GET powininen pojawić się formularz, w którym można dodać nowy przepis.
//
//    Pola formularza:
//
//            - nazwa przepisu (pole typu **text**),
//- opis przepisu (pole typu **text**),
//- czas przygotowania w minutach (pole typu **number**),
//- sposób przygotowania (pole typu **textarea**),
//- składniki (pole typu **textarea**).
//
//    Formularz musi posiadać przycisk _**Wyślij**_, po naciśnięciu którego ma zostać wysłany metodą POST na stronę _**/app/recipe/add**_.
//
//    Utwórz kontroler i dołącz odpowiednio skomponowany widok dla formularza dodawania przepisu.
//
//    Pamiętaj o dodaniu walidacji do pól (jeśli została ustalona przez zespół).
}
