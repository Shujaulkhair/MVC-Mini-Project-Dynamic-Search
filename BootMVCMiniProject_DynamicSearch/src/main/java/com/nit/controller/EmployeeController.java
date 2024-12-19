package com.nit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nit.model.Employee;
import com.nit.service.IEmployeeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController {

	@Autowired
	private IEmployeeService serv;
	
	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	
	//====================================Start SEARCHING===========================================
	
	
	@PostMapping("/search")
	public String showReportWithDynamicSearch(@ModelAttribute("mod") Employee emp, Map<String, Object> map) {
		
		List<Employee> list = serv.showEmployeeReportWithDynamicSearch(emp);
		map.put("empList", list);
		return "show_searched_report";
	}
	
	//====================================End SEARCHING===========================================
	
	@GetMapping("/report")
	//Here For search operation ModelAttribute required. So we added
	public String showEmployeeReport(Map<String,Object> map, @ModelAttribute("mod") Employee emp) {
		Iterable<Employee> list = serv.showAllEmployee();
		map.put("empList", list);
		return "show_report";
	}
	
	@GetMapping("/add_emp")
	public String showFormForEmployeeSaving(@ModelAttribute("emp") Employee emp) {
		System.out.println("EmployeeController.showFormForEmployeeSaving()");
		return "register_employee";
	}
	
	@PostMapping("/add_emp")
	public String saveEmployee(@ModelAttribute("emp") Employee emp, RedirectAttributes attrs) {
	
		String employee = serv.addEmployee(emp); 
		
		//Keep the result as FlashAttribute
		attrs.addFlashAttribute("resultMsg",employee); //This is Best Practice.
	
		return "redirect:report"; //Redirecting for escaping from Double posting/Duplicate form submission  
		//By using redirection source handler method and destination handler method did not share same req,res obj. So the result MESSAGE will not appear. 
		//To solve this problem use "Flash Attribute" by placing in "RedirectAttribute" object.
		//Just remove Map<-,-> and add "RedirectAttribute" 
		
		//NOTE:- After displaying the result if you refresh the page then it will disappear. It will show only one time. 
		//Still if you want to display after refreshing the page then use "HttpSession"
	}
	
//	@PostMapping("/add_emp")
//	public String saveEmployee(@ModelAttribute("emp") Employee emp, HttpSession ses) {
//	
//		String employee = serv.addEmployee(emp);
//		
//		ses.setAttribute("resultMsg",employee); //By using "HttpSession" even after refresh message will stay remain.
//		
//	
//		return "redirect:report"; //Redirecting for escaping from Double posting/Duplicate form submission  
//		
//	}
	
//	@PostMapping("/add_emp")
//	public String saveEmployee(@ModelAttribute("emp") Employee emp, Map<String, Object> map) {
//	
//		String employee = serv.addEmployee(emp);
//		Iterable<Employee> showEmp = serv.showAllEmployee();
//		
//		map.put("resultMsg", employee);
//		map.put("empList", showEmp);
//		
//		return "show_report"; //By using this we will get Duplicate form Submission problem. so to resolve this problem use "redirect"
//	}
	
	
	//================================EDITING========================================
	
	@GetMapping("/edit_emp")
	public String showEditEmployeeFormPage(@RequestParam("no") int no, @ModelAttribute("mod") Employee emp) {
		
		System.out.println("EmployeeController.showEditEmployeeFormPage()");
		//Using Service class
		Employee employeeByNo = serv.getEmployeeByNo(no);
		
		//Copying data
		BeanUtils.copyProperties(employeeByNo, emp); //This is predefined method given by "spring people" 
		//Copying old object data to new object to show the existing data to the user.
		return "update_employee";
	}
	
	@PostMapping("/edit_emp")
	public String editEmployee(RedirectAttributes attrs, @ModelAttribute("emp") Employee emp) {
		System.out.println("EmployeeController.editEmployee()");
		//Using Service
		String msg = serv.updateEmployee(emp);
		
		//Adding result message to FlashAttribute
		attrs.addFlashAttribute("resultMsg", msg);
	
		return "redirect:report"; //here source and destination handler method is different that's why we are dealing with "redirect:forward"
	}
	
	//================================DELETING========================================
	
	@GetMapping("/delete_emp")
	public String deleteEmployee(@RequestParam("no") int no, Map<String,Object> map) {
		
		try {
			String msg = serv.deleteEmployeeById(no);
			map.put("resultMsg", msg);
			
			return "forward:report"; //Here We are dealing with "forward:report" return type because source and destination handler method both are same "GetMapping" 
		}
		catch(Exception e) {
			e.printStackTrace();
			map.put("resultMsg", e.getMessage());
			return "error";
		}
		
	}
	
	
}
