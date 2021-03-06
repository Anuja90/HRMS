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
	private int LeavesTaken;
	private String leaveReason;
	private long empId;


	public String execute()
	{
	
		Date date = new Date();
		Leave leave = new Leave();
		leave.setEmpId(empId);
		leave.setLeaveTypeId(leaveTypeId);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		leave.setNoOfDays(noOfDays);
		leave.setLeavesTaken(LeavesTaken+noOfDays);
		leave.setLeaveReason(leaveReason);
		leave.setSubmitDate(date);
		leave.setStatus("Pending");
		System.out.println(leaveTypeId);
		
		LeaveManager.createLeave(leave);
		
		return "success";
	}

	@Override
	public void validate() {
		if (empId == 0 )
	    {
			addFieldError("empId","Please enter Employee Id !");
	    }
		if (leaveTypeId == 0)
	    {
			addFieldError("leaveTypeId","Select Leave type");
	    }
		if (fromDate == null)
	    {
			addFieldError("fromDate","Please select starting date !");
	    }
		if (toDate == null)
	    {
			addFieldError("toDate","Please select ending date !");
	    }
		if (leaveReason == null || leaveReason.trim().equals(""))
	    {
			addFieldError("leaveReason","Please enter leave reason !");
	    }
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

	
	
	}
