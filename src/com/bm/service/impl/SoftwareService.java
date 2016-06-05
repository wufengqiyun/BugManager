package com.bm.service.impl;

import java.util.List;

import com.bm.dao.ISoftwareDAO;
import com.bm.service.ISoftwareService;

public class SoftwareService implements ISoftwareService{
	private ISoftwareDAO SoftwareDAO;
	
	public ISoftwareDAO getSoftwareDAO() {
		return SoftwareDAO;
	}
	public void setSoftwareDAO(ISoftwareDAO softwareDAO) {
		SoftwareDAO = softwareDAO;
	}
	
	@Override
	public List getallSoftware() {
		// TODO Auto-generated method stub
		return SoftwareDAO.getallSoftware();	
	}

}
