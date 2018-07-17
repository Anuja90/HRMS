package com.persistence;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class LeaveManager {
	
	public static void createLeave(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		con.session.save(leave);		
		con.transaction.commit();
	}
	
	public static List selectALeave(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		
		//System.out.println(employee.getId());
		
		String hql = "from 	Leave l where l.empId=:empid ";
		
		Query query = con.session.createQuery(hql);
		
		query.setParameter("empid",leave.getEmpId());
		
		
		
		
		ArrayList<Leave> list = (ArrayList<Leave>)query.list();
		return list;
		

	}
}
