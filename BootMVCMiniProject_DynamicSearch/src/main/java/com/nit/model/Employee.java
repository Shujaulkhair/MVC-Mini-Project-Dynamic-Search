package com.nit.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Entity
@Table(name = "emp_info")
@Data
//@AllArgsConstructor
//@NoArgsConstructor
public class Employee {

	@Id
	@SequenceGenerator(name = "gen1", sequenceName = "emp_id_seq", initialValue = 1000, allocationSize = 2)
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	private Integer eid;
	
	@Column(length = 25)
	//@NonNull
	private String name;
	
	//@NonNull
	private Double sal;
	
	@Column(length = 35)
	//@NonNull
	private String addr;
	
	@Column(length = 25)
	//@NonNull
	private String designation = "Designer";
}
