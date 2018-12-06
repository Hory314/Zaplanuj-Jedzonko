package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.dto.RecipePlanDTO;
import pl.coderslab.repository.PlanRepository;

import java.util.*;

@Service
@Transactional
public class PlanService
{
    @Autowired
    PlanRepository planRepository;

    public int getUserPlansCount(int userId)
    {
        return planRepository.getNumberOfPlansEnteredByAdmin(userId);
    }

    public String getLastPlanName(int userId)
    {
        return planRepository.getLastPlanName(userId);
    }

    /**
     * @param userId
     * @return last user plan as map key->value: dayName -> List{mealName, recipeName, recipeDescription}
     */
    public Map<String, List<RecipePlanDTO>> getLastPlanMap(int userId)
    {
        List<RecipePlanDTO> recipePlanDTOList = getUserLastPlan(userId);

        Map<String, List<RecipePlanDTO>> map = new LinkedHashMap<>(); // LinkedHashMap - like HashMap but save order of items

        String lastDayName = "";
        List<RecipePlanDTO> oneDayDTOList = null;

        for (RecipePlanDTO dto : recipePlanDTOList)
        {
            if (lastDayName.equals(dto.getDayName())) // same day
            {
                oneDayDTOList.add(dto);
            }
            else // new day
            {
                if (!lastDayName.equals("")) map.put(lastDayName, oneDayDTOList);
                oneDayDTOList = new ArrayList<>();
                oneDayDTOList.add(dto);
            }
            lastDayName = dto.getDayName();
        }
        map.put(lastDayName, oneDayDTOList); // put last iteration

        return map;
    }

    private List<RecipePlanDTO> getUserLastPlan(int userId)
    {
        return planRepository.usrLstPln(userId);
    }
}
