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
		System.out.println("fdhfdkfhdkhgfkgh");
		Leave leave = new Leave();
		leave.setLeaveTypeId(leaveTypeId);
		leave.setFromDate(fromDate);
		leave.setToDate(toDate);
		System.out.println("jddddoooodddddgvj");
		System.out.println(leaveTypeId);
		System.out.println(fromDate);
		System.out.println(toDate);
		leave.setNoOfDays(noOfDays);
		return "success";
	}
	
	private void calcDays()
	{
	 noOfDays = (int) ((toDate.getTime() - fromDate.getTime())/(1000*60*60*24));
	}
	
	}
