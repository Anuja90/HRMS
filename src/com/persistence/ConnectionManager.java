package com.persistence;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class ConnectionManager {

	Configuration configuration = new Configuration().configure();

	SessionFactory sessionFactory = configuration.buildSessionFactory();

	Session session = sessionFactory.getCurrentSession();

	Transaction transaction = session.beginTransaction();
	

	
}
