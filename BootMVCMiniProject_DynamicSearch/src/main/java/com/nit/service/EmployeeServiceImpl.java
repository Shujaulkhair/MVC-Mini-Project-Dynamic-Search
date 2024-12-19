package com.nit.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import com.nit.model.Employee;
import com.nit.repository.IEmployeeRepository;

@Service
public class EmployeeServiceImpl implements IEmployeeService {

	@Autowired
	private IEmployeeRepository repo;
	
	@Override
	public List<Employee> showAllEmployee() {

		List<Employee> list = repo.findAll();
		return list;
	}

	@Override
	public String addEmployee(Employee emp) {

		Employee save = repo.save(emp);
		Integer eid = save.getEid();
		
		return "Employee Saved with id:: " + eid + " Name:: " + save.getName();
	}

	@Override
	public Employee getEmployeeByNo(int eno) {

//		Optional<Employee> byId = repo.findById(eno);
//		Employee emp = byId.orElseThrow(()->new IllegalArgumentException("Id Not Found"));
		
		Employee orElseThrow = repo.findById(eno).orElseThrow(()->new IllegalArgumentException("Not found"));
		
		return orElseThrow;
	}

	@Override
	public String updateEmployee(Employee emp) {

		Employee save = repo.save(emp);
		Integer eid = save.getEid();
		
		return "Employee Updated By id value:: " + eid;
	}

	@Override
	public String deleteEmployeeById(int eno) {

		Optional<Employee> byId = repo.findById(eno);
		if(byId.isPresent()) {
			repo.deleteById(eno);
			return "Id No:: " + eno + " " + byId.get().getName()+" Employee Deleted";
		}
		return eno +  " :: Id not found";
	}

	@Override
	public List<Employee> showEmployeeReportWithDynamicSearch(Employee emp) {


		//Here replacing empty value with null value
		if(emp.getName().equalsIgnoreCase("") || emp.getName().length()==0) {
			emp.setName(null);
		}
		if(emp.getAddr().equalsIgnoreCase("") || emp.getAddr().length()==0) {
			emp.setAddr(null);
		}
		if(emp.getDesignation().equalsIgnoreCase("") || emp.getDesignation().length()==0) {
			emp.setDesignation(null);
		}
		
		
		//Prepare Example obj having Employee Obj.
		Example exm = Example.of(emp);
		
		//Use Repository
		List<Employee> list = repo.findAll(exm);
		
		return list;
	}

}
