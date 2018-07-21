package com.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import com.opensymphony.xwork2.ActionSupport;
import com.persistence.Leave;
import com.persistence.LeaveManager;

public class updateLeaveAction  extends ActionSupport {

	private long id;
	private long leaveTypeId;
	private Date fromDate;
	private Date toDate;
	private int noOfDays;
	private int LeavesTaken;
	private String leaveReason;
	private long empId;
	private String status;
	
	private ArrayList leavelist = new ArrayList();
	
	public String execute()
	{
		Leave leave = new Leave();
		
		leave = setValues();
		LeaveManager.updateStatus(leave);
		return "success";
	}
	public Leave setValues()
	{
		Leave leave = new Leave();
		Date date = new Date();
		leave.setId(id);
		leave.setEmpId(empId);
		leave.setLeaveTypeId(leaveTypeId);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		leave.setNoOfDays(noOfDays);
		leave.setLeavesTaken(LeavesTaken);
		leave.setLeaveReason(leaveReason);
		leave.setStatus(status);
		leave.setSubmitDate(date);
		return leave;
	}
	public String updateLeave()
	{
		Leave leave = new Leave();
		leave = setValues();
		
		LeaveManager.updateLeave(leave);
		return "success";
	}
	public String deleteLeave()
	{
		LeaveManager.deleteLeave(id);
		return "success";
	}
	public String selectToUpdate()
	{
		
		Leave leave = new Leave();
		leave.setId(id);
		LeaveManager.selectIDLeave(leave);
		leavelist = (ArrayList)LeaveManager.selectIDLeave(leave);
		
		
		
		return "success";
	}
	
	public ArrayList getLeavelist() {
		return leavelist;
	}

	public void setLeavelist(ArrayList leavelist) {
		this.leavelist = leavelist;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public long getLeaveTypeId() {
		return leaveTypeId;
	}

	public void setLeaveTypeId(long leaveTypeId) {
		this.leaveTypeId = leaveTypeId;
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

	public int getNoOfDays() {
		return noOfDays;
	}

	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}



	public int getLeavesTaken() {
		return LeavesTaken;
	}

	public void setLeavesTaken(int leavesTaken) {
		LeavesTaken = leavesTaken;
	}

	public String getLeaveReason() {
		return leaveReason;
	}

	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}

	public long getEmpId() {
		return empId;
	}

	public void setEmpId(long empId) {
		this.empId = empId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	
	



	
	
}
