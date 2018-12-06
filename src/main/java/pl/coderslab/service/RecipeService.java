package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.repository.RecipeRepository;


@Service
@Transactional
public class RecipeService
{
    @Autowired
    RecipeRepository recipeRepository;

    public int getUserRecipesCount(int userId)
    {
        return recipeRepository.getNumberOfRecipesEnteredByAdmin(userId);
    }
}
