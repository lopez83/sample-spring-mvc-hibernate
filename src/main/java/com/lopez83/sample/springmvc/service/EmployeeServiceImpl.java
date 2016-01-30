package com.lopez83.sample.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lopez83.sample.springmvc.dao.EmployeeDAO;
import com.lopez83.sample.springmvc.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private EmployeeDAO employeeDAO;

	@Override
	@Transactional
	public List<Employee> listEmployees() {
		return this.employeeDAO.listEmployees();
	}

	@Override
	@Transactional
	public Employee getOldestEmployee() {
		return this.employeeDAO.getOldestEmployee();
	}

	@Override
	@Transactional
	public Employee getEmployeeById(int id) {
		return this.employeeDAO.getEmployeeById(id);
	}
	
	@Override
	@Transactional
	public void addEmployee(Employee employee) {
		this.employeeDAO.addEmployee(employee);		
	}
}
