package com.action;

import java.util.Date;

import com.persistence.Leave;
import com.persistence.LeaveManager;

public class createLeaveAction {

	private long leaveTypeId;
	private Date fromDate;
	private Date toDate;
	private int noOfDays;
	private int remainingLeaves;
	private String leaveReason;
	
	public String execute()
	{
		System.out.println(fromDate);
		System.out.println(toDate);
		System.out.println(leaveReason);
		System.out.println(leaveTypeId);
		Leave leave = new Leave();
		leave.setLeaveTypeId(leaveTypeId);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		leave.setNoOfDays(noOfDays);
		return "success";
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
