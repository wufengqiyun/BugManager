package com.bm.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.bm.dao.ISoftwareDAO;
import com.bm.model.SoftwareInfo;

public class SoftwareDAO implements ISoftwareDAO{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<SoftwareInfo> getallSoftware() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from SoftwareInfo");
		List softwares=query.list();
		ts.commit();
		session.close();
		return softwares;
	}
	
}

