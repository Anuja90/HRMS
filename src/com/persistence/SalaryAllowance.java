package com.persistence;

public class SalaryAllowance {

	
	private int allow_id;
	private int  emp_id;
	private String allowancesName;
	private Double payment;
	
	public int getAllow_id() {
		return allow_id;
	}
	public void setAllow_id(int allow_id) {
		this.allow_id = allow_id;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getAllowancesName() {
		return allowancesName;
	}
	public void setAllowancesName(String allowancesName) {
		this.allowancesName = allowancesName;
	}
	public Double getPayment() {
		return payment;
	}
	public void setPayment(Double payment) {
		this.payment = payment;
	}
	
	
}
