package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Admin;
import pl.coderslab.model.Plan;
import pl.coderslab.service.AdminService;
import pl.coderslab.service.PlanService;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/plans")
public class PlanController
{

    @Autowired
    private PlanService planService;

    @Autowired
    AdminService adminService;

    @GetMapping("/add")
    public String addPlanForm(Model model, Principal principal)
    {
        Admin user = adminService.findAdminByEmail(principal.getName());
        Plan plan = new Plan();
        model.addAttribute("plan", plan);
        model.addAttribute("user", user);
        return "plan/addPlan";
    }

    @PostMapping("/add")
    public String addPlan(@ModelAttribute @Valid Plan plan, Principal principal, BindingResult result)
    {
        if (result.hasErrors())
        {
            return "plan/addPlan";
        }
        Admin user = adminService.findAdminByEmail(principal.getName());
        plan.setAdmin(user);
        planService.save(plan);
        return "redirect:/plans";
    }

    @GetMapping
    public String planList(Model model, Principal principal)
    {
        Admin user = adminService.findAdminByEmail(principal.getName());
        List<Plan> plans = planService.findPlansByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("plans", plans);
        return "plan/planList";
    }

    @GetMapping("/edit/{id}")
    public String editRecipe(Model model, @PathVariable Long id, Principal principal)
    {
        Admin user = adminService.findAdminByEmail(principal.getName());
        Plan plan = planService.find(id);
        model.addAttribute("user", user);
        model.addAttribute(plan);
        return "plan/addPlan";
    }

    @PostMapping("/edit/{id}")
    public String editEventPost(@PathVariable Long id, @ModelAttribute @Valid Plan plan,
                                Principal principal, BindingResult result)
    {
        if(result.hasErrors()){
            return "plan/addPlan";
        }
        if(plan.getId()==null){
            plan.setId(id);
        }
        Plan planOld = planService.find(id);
        Admin user = adminService.findAdminByEmail(principal.getName());
        plan.setCreated(planOld.getCreated());
        plan.setAdmin(user);
        planService.update(plan);
        return "redirect:../../plans";
    }
}
