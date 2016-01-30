package com.lopez83.sample.springmvc.service;

import java.util.List;

import com.lopez83.sample.springmvc.model.Employee;

public interface EmployeeService {

	public List<Employee> listEmployees();
	public Employee getOldestEmployee();
	public Employee getEmployeeById(int id);
	public void addEmployee(Employee employee);
}
