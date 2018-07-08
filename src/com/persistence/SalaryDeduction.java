package com.persistence;

import java.util.Date;

public class SalaryDeduction {

	
	private int deduct_id;
	private int  emp_id;
	private String deductionname;
	private Double amount;
	private Date addDate;
	
	public int getDeduct_id() {
		return deduct_id;
	}
	public void setDeduct_id(int deduct_id) {
		this.deduct_id = deduct_id;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getDeductionname() {
		return deductionname;
	}
	public void setDeductionname(String deductionname) {
		this.deductionname = deductionname;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	
	
	
}
