package com.bm.service;

import java.util.List;

public interface IBugService {
	public List getBugList();
	public List getBugBySoftwarename(String softwarename,int currentpage,int pagesize);
	 public int getBugnumBySoftwarename(String softwarename);
}
