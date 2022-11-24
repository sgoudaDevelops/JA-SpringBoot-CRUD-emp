package com.app.model;

import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.Data;


@Entity
@Table(name="employee_tab")
@Data
public class Employee {

	@Id
	@GeneratedValue(generator = "emp")
	@GenericGenerator(name = "emp",strategy = "increment")
	@Column(name="id")
	private Integer empId;
	
	@Column(name="name")
	private String empName;
	
	@Column(name="sal")
	private Double empSal;
	
	@Column(name="dept")
	private String empDept;    // dropdown
	
	@Column(name="gen")
	private String empGen;   // radiobutton
	
	@ElementCollection
	@CollectionTable(name="employee_prjs",
			joinColumns = @JoinColumn(name="eidFk")
	)
	@Column(name="prjs")
	private Set<String> empPrjs;   // checkBox

	
	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public void setEmpSal(Double empSal) {
		this.empSal = empSal;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public Double getEmpSal() {
		return empSal;
	}

	

	public String getEmpDept() {
		return empDept;
	}

	public void setEmpDept(String empDept) {
		this.empDept = empDept;
	}

	public String getEmpGen() {
		return empGen;
	}

	public void setEmpGen(String empGen) {
		this.empGen = empGen;
	}

	public Set<String> getEmpPrjs() {
		return empPrjs;
	}

	public void setEmpPrjs(Set<String> empPrjs) {
		this.empPrjs = empPrjs;
	}


}
