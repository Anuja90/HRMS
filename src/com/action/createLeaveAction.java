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

	private String Execute()
	{
		Leave leave = new Leave();
		leave.setLeaveTypeId(leaveTypeId);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		calcDays();
		leave.setNoOfDays(noOfDays);
		leave.setLeaveReason(leaveReason);
	
		LeaveManager.createLeave(leave);
		
		return "Success";
	}
	
	private void calcDays()
	{
	 noOfDays = (int) ((toDate.getTime() - fromDate.getTime())/(1000*60*60*24));
	}
	
	}
