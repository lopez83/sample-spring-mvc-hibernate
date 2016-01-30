package com.lopez83.sample.springmvc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lopez83.sample.springmvc.model.Employee;
import com.lopez83.sample.springmvc.service.EmployeeService;

@RequestMapping(value = "/employee")
@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;

	@InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listEmployees(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("listEmployees", this.employeeService.listEmployees());
		return "employees";
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String getEmployeeById(@PathVariable("id") int id, Model model) {
		model.addAttribute("employee", this.employeeService.getEmployeeById(id));
		return "employee";
	}
	
	@RequestMapping(value = "/oldest", method = RequestMethod.GET)
	public String oldestEmployee(Model model) {
		model.addAttribute("employee", this.employeeService.getOldestEmployee());
		return "employee";
	}

	@RequestMapping(value= "/add", method = RequestMethod.GET)
	public String addEmployee(Model model){		
		model.addAttribute("employee", new Employee());
		return "addEmployee";		
	}
	
	@RequestMapping(value= "/add", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("employee") Employee e){		
		this.employeeService.addEmployee(e);		
		return "redirect:/employee/list";		
	}
}
