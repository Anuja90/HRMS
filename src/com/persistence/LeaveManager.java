package com.persistence;

public class LeaveManager {

	ConnectionManager con = new ConnectionManager();
	
	public static void createLeave(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		con.session.save(leave);		
		con.transaction.commit();
	}
}
