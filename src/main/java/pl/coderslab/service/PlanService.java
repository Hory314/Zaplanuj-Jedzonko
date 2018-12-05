package pl.coderslab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.Plan;
import pl.coderslab.repository.PlanRepository;

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

    public Plan getLastUserPlan(int userId)
    {
        // return planRepository.methodName(userId); // prepared
        return null;
    }
}
