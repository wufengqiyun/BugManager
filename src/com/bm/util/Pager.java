package com.bm.util;

public class Pager {
	
	private int currentPage;
	private int pageSize=4;
	private int totalSize;
	private int totalPage;
	private boolean hasFirst=true;
	private boolean hasPrevious=true;
	private boolean hasNext=true;
	private boolean hasLast=true;
	public Pager(int currentpage,int totalsize){
		this.currentPage=currentpage;
		this.totalSize=totalsize;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	public int getTotalPage() {
		totalPage=totalSize/pageSize;
		if (totalSize%pageSize!=0) {
			totalPage++;
		}
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	//是否有首页
	public boolean isHasFirst() {
		if (currentPage==1) {
			return false;
		}
		else{
			
		return true;
		}
	}
	public void setHasFirst(boolean hasFirst) {
		this.hasFirst = hasFirst;
	}
	
	//是否是最后一页
		public boolean isHasLast() {
			if (currentPage==getTotalPage()) {
				return false;
			}
			else {
				return true;
			}
		}
		public void setHasLast(boolean hasLast) {
			this.hasLast = hasLast;
		}
	//是否有前一页
	public boolean isHasPrevious() {
		if (isHasFirst()) {
			return true;
		}
		else {
			return false;
		}
	}
	public void setHasPrevious(boolean hasPrevious) {
		this.hasPrevious = hasPrevious;
	}
	//是否有下一页
	public boolean isHasNext() {
		if (hasLast) {
			return true;
		}
		else {
			return false;
		}
		
	}
	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}
	
	
}
