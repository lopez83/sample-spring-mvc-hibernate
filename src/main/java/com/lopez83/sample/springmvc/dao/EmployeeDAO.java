package com.lopez83.sample.springmvc.dao;

import java.util.List;

import com.lopez83.sample.springmvc.model.Employee;

public interface EmployeeDAO {
	public List<Employee> listEmployees();
	public Employee getOldestEmployee();
	public Employee getEmployeeById(int id);
	void addEmployee(Employee e);
}
