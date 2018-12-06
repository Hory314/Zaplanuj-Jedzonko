package pl.coderslab.dto;

import java.util.Objects;

public class RecipePlanDTO
{
    private String dayName;

    private String mealName;

    private String recipeName;

    private String recipeDescription;

    public RecipePlanDTO(String dayName, String mealName, String recipeName, String recipeDescription)
    {
        this.dayName = dayName;
        this.mealName = mealName;
        this.recipeName = recipeName;
        this.recipeDescription = recipeDescription;
    }

    public String getDayName()
    {
        return dayName;
    }

    public void setDayName(String dayName)
    {
        this.dayName = dayName;
    }

    public String getMealName()
    {
        return mealName;
    }

    public void setMealName(String mealName)
    {
        this.mealName = mealName;
    }

    public String getRecipeName()
    {
        return recipeName;
    }

    public void setRecipeName(String recipeName)
    {
        this.recipeName = recipeName;
    }

    public String getRecipeDescription()
    {
        return recipeDescription;
    }

    public void setRecipeDescription(String recipeDescription)
    {
        this.recipeDescription = recipeDescription;
    }

    @Override
    public String toString()
    {
        return "RecipePlanDTO{" +
                "dayName='" + dayName + '\'' +
                ", mealName='" + mealName + '\'' +
                ", recipeName='" + recipeName + '\'' +
                ", recipeDescription='" + recipeDescription + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RecipePlanDTO that = (RecipePlanDTO) o;
        return Objects.equals(mealName, that.mealName) &&
                Objects.equals(recipeName, that.recipeName);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(mealName, recipeName);
    }
}
