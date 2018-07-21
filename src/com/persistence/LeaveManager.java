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
		updateTaken(leave);
	}
	public static void updateTaken(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		
		String hql = "update Leave l set LeavesTaken =:lLeavesTaken where l.empId=:eID";
		
		Query query = con.session.createQuery(hql);
		
		query.setParameter("eID",leave.getEmpId());
		query.setParameter("lLeavesTaken",leave.getLeavesTaken());
		query.executeUpdate();
		
		con.transaction.commit();

		
	}
	public static List selectALeave(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		
		
		String hql = "from 	Leave l where l.empId=:empid ";
		
		Query query = con.session.createQuery(hql);
		
		query.setParameter("empid",leave.getEmpId());
		
		ArrayList<Leave> list = (ArrayList<Leave>)query.list();
		return list;
	}
	public static List selectIDLeave(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		
		
		String hql = "from 	Leave l where l.id=:id ";
		Query query = con.session.createQuery(hql);
		
		query.setParameter("id",leave.getId());
		
		ArrayList<Leave> list = (ArrayList<Leave>)query.list();
		return list;
	}
	public static List selectAllLeaves()
	{
		ConnectionManager con = new ConnectionManager();
		
		
		String hql = "from 	Leave  ";
		Query query = con.session.createQuery(hql);
		
		
		ArrayList<Leave> list = (ArrayList<Leave>)query.list();
		return list;
		

	}
	

	public static void updateLeave(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		
		String hql = "update Leave l set leaveTypeId=:lleaveTypeId, fromDate=:lfromDate, toDate=:ltoDate, LeavesTaken=:lLeavesTaken, leaveReason =:lleaveReason where l.id=:ID";
		
		Query query = con.session.createQuery(hql);
		
		query.setParameter("lleaveTypeId",leave.getLeaveTypeId());
		query.setParameter("lfromDate",leave.getFromDate());
		query.setParameter("ltoDate",leave.getToDate());
		query.setParameter("lLeavesTaken",leave.getLeavesTaken());
		query.setParameter("lleaveReason",leave.getLeaveReason());
		query.setParameter("ID",leave.getId());
		query.executeUpdate();
		
		con.transaction.commit();
	}
	public static void updateStatus(Leave leave)
	{
		ConnectionManager con = new ConnectionManager();
		
		String hql = "update Leave l set status =:lstatus where l.id=:ID";
		
		Query query = con.session.createQuery(hql);
		
		query.setParameter("ID",leave.getId());
		query.setParameter("lstatus",leave.getStatus());
		query.executeUpdate();
		
		con.transaction.commit();
		
	}
	public static void deleteLeave(long id)
	{
		ConnectionManager con = new ConnectionManager();
		
		String hql = "DELETE FROM Leave WHERE id = :id";
		Query query = con.session.createQuery(hql);

		query.setParameter("id", id);
		
		query.executeUpdate();
		con.transaction.commit();
	}

}
