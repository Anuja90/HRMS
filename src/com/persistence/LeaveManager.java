package com.persistence;

public class LeaveManager {

	ConnectionManager con = new ConnectionManager();
	
	public static void createLeave(Leave leave)
	{
		session.save(person);

		transaction.commit();
	}
}
