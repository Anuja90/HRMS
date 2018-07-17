package com.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.persistence.Leave;
import com.persistence.LeaveManager;

public class createLeaveAction extends ActionSupport {

	private long leaveTypeId;
	private Date fromDate;
	private Date toDate;
	private int noOfDays;
	private int remainingLeaves;
	private String leaveReason;
	private long empId;


	public String execute()
	{
		System.out.println(fromDate);
		System.out.println(toDate);
		System.out.println(leaveReason);
		System.out.println(leaveTypeId);
		
		Date date = new Date();
		Leave leave = new Leave();
		leave.setEmpId(empId);
		leave.setLeaveTypeId(leaveTypeId);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		leave.setNoOfDays(noOfDays);
		leave.setRemainingLeaves(remainingLeaves);
		leave.setLeaveReason(leaveReason);
		leave.setSubmitDate(date);
		leave.setStatus("Pending");
		LeaveManager.createLeave(leave);
		
		return "success";
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

	public int getRemainingLeaves() {
		return remainingLeaves;
	}

	public void setRemainingLeaves(int remainingLeaves) {
		this.remainingLeaves = remainingLeaves;
	}

	public String getLeaveReason() {
		return leaveReason;
	}

	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}

	





	private void calcDays()
	{
	 noOfDays = (int) ((toDate.getTime() - fromDate.getTime())/(1000*60*60*24));
	}
	
	}
