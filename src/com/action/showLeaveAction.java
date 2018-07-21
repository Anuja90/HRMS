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
	private long leaveId;
	private long leaveTypeId;
	private String status;
	private Date fromDate;
	private Date toDate;
	
	private ArrayList leavelist = new ArrayList();
	
	public String execute() 
	{
		Leave leave = new Leave();
		String ret;
		
		leave.setEmpId(empId);
		
		leave.setLeaveTypeId(leaveTypeId);
		leave.setStatus(status);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		System.out.println("aaaaaaaaaaaaaaaaaaa");
		
		
		//leave.setEmpName(LeaveManager.getEmployeeName(empId));
		
		//System.out.println(leave.getEmpName());
		
		
		if(empId==0)
		{
			System.out.println("aaaaaaaaaaaaaaaaaaa");
			ret = selectAll();
		}
		else 
		{
			
			ret = selectOne(leave);
		}
		return ret;
	}
	
	public long getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(long leaveId) {
		this.leaveId = leaveId;
	}
	
	public String selectOne(Leave leave)
	{
		leavelist = (ArrayList)LeaveManager.selectALeave(leave);
		return "success";
	}
	public String selectAll()
	{
		leavelist = (ArrayList) LeaveManager.selectAllLeaves();
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
