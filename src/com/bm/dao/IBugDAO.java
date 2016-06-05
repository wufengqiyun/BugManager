package com.bm.dao;

import java.util.List;

public interface IBugDAO {
  public List getBugList();
  public List getBugBySoftwarename(String softwarename,int currentpage,int pagesize);
  public int getBugnumBySoftwarename(String softwarename);
}
