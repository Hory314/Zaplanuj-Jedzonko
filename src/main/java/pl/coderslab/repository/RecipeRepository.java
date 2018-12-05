package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Recipe;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    @Query(value = "SELECT count(*) FROM recipe r WHERE r.admin_id = ?1", nativeQuery = true)
    int getNumberOfRecipesEnteredByAdmin(int adminId);

}

//    SELECT day_name.name as day_name, meal_name,  recipe.name as recipe_name, recipe.description as recipe_description
//        FROM recipe_plan
//        JOIN day_name on day_name.id=day_name_id
//        JOIN recipe on recipe.id=recipe_id WHERE
//        plan_day_id =  (SELECT MAX(id) from plan WHERE admin_id = ?1)
//        ORDER by day_name.order, recipe_plan.order
