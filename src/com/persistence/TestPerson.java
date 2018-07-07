package com.persistence;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class TestPerson {

	public static void main(String[] args) {

		Configuration configuration = new Configuration().configure();

		SessionFactory sessionFactory = configuration.buildSessionFactory();

		Session session = sessionFactory.getCurrentSession();

		Transaction transaction = session.beginTransaction();

		// createPerson(session);
		// selectPerson1(session);
		//selectPerson2(session);
		// selectAPerson(session);
		 updateAPerson(session);
		// deleteAPerson(session);

		transaction.commit();

	}

	public static void createPerson(Session session) {
		Person person = new Person();

		person.setName("Test Name");
		person.setSurname("Test surname");
		person.setAddress("Test Address");

		session.save(person);
	}

	private static void selectPerson1(Session session) {

		String hql = "from Person";

		Query query = session.createQuery(hql);
		List<Person> list = query.list();

		java.util.Iterator<Person> iter = list.iterator();
		while (iter.hasNext()) {
			Person person = iter.next();
			System.out.println("ID->" + person.getId());
			System.out.println("NAME-> " + person.getName());
			System.out.println("SURNAME->" + person.getSurname());
			System.out.println("ADDRESS->" + person.getAddress());
		}

	}

	private static void selectPerson2(Session session) {

		String hql = "from Person p where p.id=:id";

		Query query = session.createQuery(hql);
		query.setParameter("id", 3L);
		List<Person> list = query.list();

		java.util.Iterator<Person> iter = list.iterator();
		while (iter.hasNext()) {
			Person person = iter.next();
			System.out.println("ID->" + person.getId());
			System.out.println("NAME-> " + person.getName());
			System.out.println("SURNAME->" + person.getSurname());
			System.out.println("ADDRESS->" + person.getAddress());
		}

	}

	private static void selectAPerson(Session session) {

		String hql = "from Person p where p.id=:id";

		Query query = session.createQuery(hql);
		query.setParameter("id", 2L);

		List<Person> list = query.list();

		java.util.Iterator<Person> iter = list.iterator();
		while (iter.hasNext()) {

			Person person = iter.next();
			System.out.println("ID->" + person.getId());
			System.out.println("NAME-> " + person.getName());
			System.out.println("SURNAME->" + person.getSurname());
			System.out.println("ADDRESS->" + person.getAddress());
		}

	}

	public static void updateAPerson(Session session) {
		String hql = "update Person p set name=:name where p.id=:id";

		Query query = session.createQuery(hql);
		query.setParameter("name", "Anuja");
		query.setParameter("id", 1L);

		query.executeUpdate();
	}
	
	

	public static void deleteAPerson(Session session) {
		String hql = "delete Person p where p.id=:id";

		Query query = session.createQuery(hql);
		query.setParameter("id", 1L);

		query.executeUpdate();
	}

}
