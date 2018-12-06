package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Recipe;

public interface RecipeRepository extends JpaRepository<Recipe, Long>
{
    @Query(value = "SELECT count(*) FROM recipe r WHERE r.admin_id = ?1", nativeQuery = true)
    int getNumberOfRecipesEnteredByAdmin(int adminId);
}

