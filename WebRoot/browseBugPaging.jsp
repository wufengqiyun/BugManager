<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'browseBugPaging.jsp' starting page</title>
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
	<s:iterator value="#request.bugspaging" id="bugspaging">
	<a href="" target="_self"><s:property value="#bugspaging.bugName" ></s:property></a><br>
	</s:iterator>
	
	<div>
		<s:set name="pager" value="#request.page" />
		<!-- <s:property value="#pager.hasFirst" />
		<s:property value="#pager.hasPrevious" />
		<s:property value="#pager.hasNext" />
		<s:property value="#pager.hasLast" /> -->
		
		<s:if test="#pager.hasFirst==true">
			<a href="browseBugPaging.action?currentPage=1">首页</a>
		</s:if>
		
		<s:if test="#pager.hasPrevious==true">
			<a
				href="browseBugPaging.action?currentPage=
				<s:property value="#pager.currentPage-1"/>">上一页</a>
		</s:if>
		
		<s:if test="#pager.hasNext==true">
			<a
				href="browseBugPaging.action?currentPage=
				<s:property value="#pager.currentPage+1"/>">下一页</a>
		</s:if>
		
		<s:if test="#pager.hasLast==true">
     			<a
				href="browseBugPaging.action?currentPage=
				<s:property value="#pager.totalPage"/>">尾页</a>
		</s:if>
		
		<br> 当前第
		<s:property value="#pager.currentPage" />
		页总共第
		<s:property value="#pager.totalPage" />
		页
	</div>
</body>
</html>
