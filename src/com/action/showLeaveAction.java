package com.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import com.persistence.Leave;
import com.persistence.LeaveManager;
import com.persistence.Person;
import com.persistence.PersonManager;

public class showLeaveAction {

	private long empId;
	private long leaveTypeId;
	private String status;
	private Date fromDate;
	private Date toDate;
	
	private ArrayList leavelist = new ArrayList();
	
	public String execute() 
	{
		Leave leave = new Leave();
		
		leave.setEmpId(empId);
		leave.setLeaveTypeId(leaveTypeId);
		leave.setStatus(status);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		
		leavelist = (ArrayList)LeaveManager.selectALeave(leave);
		
		
		return "success";
	}
	
	
	public ArrayList getLeavelist() {
		return leavelist;
	}


	public void setLeavelist(ArrayList leavelist) {
		this.leavelist = leavelist;
	}


	public long getEmpId() {
		return empId;
	}


	public void setEmpId(long empId) {
		this.empId = empId;
	}


	public long getLeaveTypeId() {
		return leaveTypeId;
	}
	public void setLeaveTypeId(long leaveTypeId) {
		this.leaveTypeId = leaveTypeId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	
}
