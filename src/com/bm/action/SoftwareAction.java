package com.bm.action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;



import com.bm.model.SoftwareInfo;
import com.bm.service.ISoftwareService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SoftwareAction extends ActionSupport{
	private ISoftwareService softwareService;
	
	public ISoftwareService getSoftwareService() {
		return softwareService;
	}

	public void setSoftwareService(ISoftwareService softwareService) {
		this.softwareService = softwareService;
	}



	public String browseSoftware() throws Exception{
		System.out.print("12313123123123123123123");
		List softwarelist=softwareService.getallSoftware();
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("softwarelist",softwarelist);
//		//在控制台列出所有的项
//		Iterator<SoftwareInfo> iterator=softwarelist.iterator();
//		while(iterator.hasNext())
//		{
//		SoftwareInfo C=iterator.next();
//		System.out.println(C.getSoftwareName()+C.getSoftwareVersion());
//		}
		
		return SUCCESS;
	}
}
