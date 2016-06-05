package com.bm.action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.bm.model.BugInfo;
import com.bm.service.IBugService;
import com.bm.util.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BugAction extends ActionSupport{
	private IBugService bugService;
	private String softwarename;
	private int currentPage=1;

	public IBugService getBugService() {
		return bugService;
	}

	public void setBugService(IBugService bugService) {
		this.bugService = bugService;
	}
	
	
	public String getSoftwarename() {
		return softwarename;
	}

	public void setSoftwarename(String softwarename) {
		this.softwarename = softwarename;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String browseBug() throws Exception{	
		List buglist=bugService.getBugList();
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("buglist",buglist);
		//在控制台列出所有的项
		Iterator<BugInfo> iterator=buglist.iterator();
		while(iterator.hasNext())
		{
		BugInfo C=iterator.next();
		System.out.println(C.getBugDesc());
		}
		return SUCCESS;
	}
	
	public String browseBugPaging() throws Exception{
		int totalsize=bugService.getBugnumBySoftwarename(softwarename);
		Pager page=new Pager(currentPage, totalsize);
		System.out.print(page.isHasFirst());
		System.out.print(page.isHasPrevious());
		System.out.print(page.isHasNext());
		System.out.print(page.isHasLast());
		
		List bugspaging=bugService.getBugBySoftwarename(softwarename, currentPage, page.getPageSize());
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("bugspaging", bugspaging);
		request.put("page", page);
		return SUCCESS;
	}
}
