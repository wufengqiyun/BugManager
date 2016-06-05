<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jkxy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <s:iterator value="#request.softwarelist" id="softwarelist">
    	<a href="browseBugPaging.action?softwarename=<s:property value="#softwarelist.softwareName"/>&currentPage=1" target="_self"><s:property value="#softwarelist.softwareName" ></s:property></a><br>
    </s:iterator>
    
    <s:iterator value="#request.buglist" id="buglist">
    	<a href="" target="_self"><s:property value="#buglist.bugName" ></s:property></a><br>
    	<s:property value="#buglist.bugFrom"/>
    	<s:property value="#buglist.bugFromv"/>
    </s:iterator>
  </body>
</html>
