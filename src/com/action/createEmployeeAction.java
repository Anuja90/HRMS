package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.persistence.Person;
import com.persistence.PersonManager;

public class createEmployeeAction extends ActionSupport {

	private String firstName;
	private String userName;
	private String address;
	

	public String execute() {
			Person person = new Person();
			person.setName(firstName);
			person.setSurname(userName);
			person.setAddress(address);	
			PersonManager.createEmployee(person);
			
			return "success";

	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	



}
