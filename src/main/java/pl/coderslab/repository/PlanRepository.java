package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Plan;

public interface PlanRepository extends JpaRepository<Plan, Long> {
    @Query(value = "SELECT count(*) FROM plan p WHERE p.admin_id = ?1", nativeQuery = true)
    int getNumberOfPlansEnteredByAdmin(int adminId);

}
