package com.persistence;

public class LeaveManager {
	
	public static void createLeave(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		con.session.save(leave);		
		con.transaction.commit();
	}
	
}
