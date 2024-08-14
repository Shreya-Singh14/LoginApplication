package com.form.Dao;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="dataofusers")
public class EntityClass {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "employee_id")
	private Integer employeeId;
	@Column(name = "username")
	private String username;
	@Column(name = "password")
	private String password;
	@Column(name = "email")
	private String email;
	@Column(name = "confirmpassword")
	private String confirmpassword;
	@Column(name = "address")
	private String address;
	@Column(name = "phone")
	private String phone;
	@Column(name = "dob")
	private String dob;
	
	public EntityClass(Integer employeeId, String username, String password, String email, String confirmpassword,
			String address, String phone, String dob) {
		super();
		this.employeeId = employeeId;
		this.username = username;
		this.password = password;
		this.email = email;
		this.confirmpassword = confirmpassword;
		this.address = address;
		this.phone = phone;
		this.dob = dob;
	}
	public EntityClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	@Override
	public String toString() {
		return "EntityClass [employeeId=" + employeeId + ", username=" + username + ", password=" + password
				+ ", email=" + email + ", confirmpassword=" + confirmpassword + ", address=" + address + ", phone="
				+ phone + ", dob=" + dob + "]";
	}
	
	
	
	






	
	
	
	
	
	
}