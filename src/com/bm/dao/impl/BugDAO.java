package com.bm.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.bm.dao.IBugDAO;

public class BugDAO implements IBugDAO{
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List getBugList() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from BugInfo order by bugFrom");
		//降序排列 部分获取
		query.setFirstResult(0);
		query.setMaxResults(5);
		List bugs=query.list();
		ts.commit();
		session.close();
		return bugs;
	}

	@Override
	public List getBugBySoftwarename(String softwarename,int currentpage,int pagesize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from BugInfo where bugFrom='"+softwarename+"'");
		int startRow=(currentpage-1)*pagesize;
		query.setFirstResult(startRow);
		query.setMaxResults(pagesize);
		List bugs=query.list();
		ts.commit();
		session.close();
		return bugs;
	}

	@Override
	public int getBugnumBySoftwarename(String softwarename) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from BugInfo where bugFrom='"+softwarename+"'");
		List bugs=query.list();
		ts.commit();
		session.close();
		return bugs.size();
	}

}
