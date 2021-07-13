package controllers;


import employee.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class NewController {
    List<Employee> list = new ArrayList<>();

    @GetMapping(value = "/form")
    public String getForm() {
        return "form.jsp";
    }

    @PostMapping(value = "/form")
    public ModelAndView dataFromEmployee(@ModelAttribute("employee") Employee employee, ModelAndView modelAndView) {
        System.out.println(employee);
        modelAndView.setViewName("result.jsp");

        list.add(employee);

        modelAndView.addObject("employee", employee);
        modelAndView.addObject("size", list.size());
        return modelAndView;
    }

    @GetMapping(value = "/all")
    public ModelAndView listAll(ModelAndView modelAndView) {
        modelAndView.addObject("list", list);

        modelAndView.setViewName("all.jsp");
        return modelAndView;
    }
}
