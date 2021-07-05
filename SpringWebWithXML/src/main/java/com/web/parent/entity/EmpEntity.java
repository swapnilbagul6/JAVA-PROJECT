package com.web.parent.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="EMPLOYEE")
public class EmpEntity {

	@Override
	public String toString() {
		return "EmpEntity [empId=" + empId + ", empName=" + empName + ", company=" + company + ", phoneNumber="
				+ phoneNumber + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="EMPID")
	private int empId;
	@Column(name="EMPNAME")
	private String empName;
	@Column(name="COMPANY")
	private String company;
	@Column(name="PHONENUMBER")
	private String phoneNumber;

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
