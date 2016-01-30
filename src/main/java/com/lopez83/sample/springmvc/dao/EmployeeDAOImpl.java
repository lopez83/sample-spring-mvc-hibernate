package com.lopez83.sample.springmvc.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lopez83.sample.springmvc.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(EmployeeDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> listEmployees() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Employee> employeesList = session.createQuery("from Employee").list();
		for(Employee e : employeesList){
			logger.info("Employees List::"+e);
		}
		return employeesList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Employee getOldestEmployee() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Employee> employeesList = session.createQuery("from Employee order by birthDate ASC").list();
		Employee employee = (Employee)employeesList.get(0);
		logger.info("Employee::"+employee);
		return employee;
	}

	@Override
	public Employee getEmployeeById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Employee employee = (Employee) session.createQuery("from Employee where id = :id").setParameter("id", id)
				.uniqueResult();
		
		return employee;
	}
	
	@Override
	public void addEmployee(Employee e) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(e);
		logger.info("Person saved successfully, Employee Details="+e);
	}
}
