package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Plan;

public interface PlanRepository extends JpaRepository<Plan, Long>
{
}
