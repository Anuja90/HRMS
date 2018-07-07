package com.persistence;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class TestSalary {

	public static void main(String[] args) {

		Configuration configuration = new Configuration().configure();

		SessionFactory sessionFactory = configuration.buildSessionFactory();

		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();

		//createSalary(session);
		//selectSalaryTwo(session);
		//udataSalary(session);
		deteteASalary(session);

		transaction.commit();

	}

	public static void createSalary(Session session) {
		salary salary = new salary();

		salary.setEmployeeName("Test 4");
		salary.setSalary(4500.00);
		session.save(salary);
	}

	private static void selectSalary(Session session) {

		String hql = "from salary";

		Query query = session.createQuery(hql);
		
		List<salary> list = query.list();

		java.util.Iterator<salary> iter = list.iterator();
		while (iter.hasNext()) {
			salary salary = iter.next();
			System.out.println("ID ->" + salary.getId());
			System.out.println("Employee Name -> " + salary.getEmployeeName());
			System.out.println("Salary->" + salary.getSalary());
		}

	}

	private static void selectSalaryTwo(Session session) {

		String hql = "from salary s where s.id=:id and s.salary=:salary ";

		Query query = session.createQuery(hql);
		query.setParameter("id",1);
		query.setParameter("salary", 4500D);
		List<salary> list = query.list();

		java.util.Iterator<salary> iter = list.iterator();
		while (iter.hasNext()) {
			salary salary = iter.next();
			System.out.println("ID ->" + salary.getId());
			System.out.println("Employee Name -> " + salary.getEmployeeName());
			System.out.println("Salary->" + salary.getSalary());
		}

	}
	
	private static void udataSalary(Session session){
		String hql = "update salary s set EmployeeName=:EmployeeName where s.id=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", 2);
		query.setParameter("EmployeeName", "Udara");
		query.executeUpdate();
	}
	
	public static void deteteASalary(Session session){
		String hql = "delete salary s where id=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id",3);
		query.executeUpdate();
	}


}
