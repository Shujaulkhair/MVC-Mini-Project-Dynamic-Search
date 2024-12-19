package com.nit.service;

import java.util.List;

import com.nit.model.Employee;

public interface IEmployeeService {

	public List<Employee> showAllEmployee();
	public String addEmployee(Employee emp);
	public Employee getEmployeeByNo(int eno);
	public String updateEmployee(Employee emp);
	public String deleteEmployeeById(int eno);
	public List<Employee> showEmployeeReportWithDynamicSearch(Employee emp);
}
