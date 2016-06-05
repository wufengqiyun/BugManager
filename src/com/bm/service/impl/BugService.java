package com.bm.service.impl;

import java.util.List;

import com.bm.dao.IBugDAO;
import com.bm.dao.impl.SoftwareDAO;
import com.bm.service.IBugService;

public class BugService implements IBugService{
	private IBugDAO bugDAO;


	public IBugDAO getBugDAO() {
		return bugDAO;
	}


	public void setBugDAO(IBugDAO bugDAO) {
		this.bugDAO = bugDAO;
	}


	@Override
	public List getBugList() {
		// TODO Auto-generated method stub
		
		return bugDAO.getBugList();
	}


	@Override
	public List getBugBySoftwarename(String softwarename, int currentpage,
			int pagesize) {
		// TODO Auto-generated method stub
		return bugDAO.getBugBySoftwarename(softwarename, currentpage, pagesize);
	}


	@Override
	public int getBugnumBySoftwarename(String softwarename) {
		// TODO Auto-generated method stub
		return bugDAO.getBugnumBySoftwarename(softwarename);
	}
	
	
}
