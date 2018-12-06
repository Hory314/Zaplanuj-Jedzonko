package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.Recipe;
import pl.coderslab.repository.RecipeRepository;

import java.util.List;

@Service
@Transactional
public class RecipeService
{
    @Autowired
    RecipeRepository recipeRepository;

    public int getUserRecipesCount(Long userId)
    {
        return recipeRepository.getUserRecipesCount(userId);
    }

    public List<Recipe> findAllRecipesByUserId(Long userId)
    {
        return recipeRepository.getRecipesByUserId(userId);
    }

    public void save(Recipe recipe)
    {
        recipeRepository.save(recipe);
    }
}
