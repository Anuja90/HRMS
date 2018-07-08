package com.persistence;

import java.util.Date;

public class Leave {
	private long id;
	private long empId;
	private long leaveTypeId;
	private String leaveType;
	private Date fromDate;
	private Date toDate;
	private int noOfDays;
	private int remainingLeaves;
	private String leaveReason;
	private Date submitDate;
	private Date approvedDate;
	private Date declinedDate;
	private String status;
	
	
	private String Execute()
	{
		
	
		return "Success";
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}

	public String getFromDate() {
		return fromDate;
	}

	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}

	public String getToDate() {
		return toDate;
	}

	public void setToDate(String toDate) {
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
		return LeaveReason;
	}

	public void setLeaveReason(String leaveReason) {
		LeaveReason = leaveReason;
	}

}
