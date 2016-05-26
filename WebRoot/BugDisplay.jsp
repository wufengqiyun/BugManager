<%@page import="com.bm.model.BugInputModel"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'BugDisplay.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/style.css">
	
</head>
<body>
	<%
		List<BugInputModel> bugdisplay = (List<BugInputModel>) session
				.getAttribute("queryBugs");
		Iterator<BugInputModel> iter = bugdisplay.iterator();
	%>
	<div class="place">
    <ul class="placeul">
    <li>位置：</li>
    <li><a href="#">首页</a></li>
    <li><a href="#">缺陷列表</a></li>
    </ul>
    </div>
	
	<div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
	
	<table class="tablelist">
		<thead>
		<tr>
				<th>发现者</th>
				<th>发现时间</th>
				<th>缺陷名称1</th>
				<th>来源软件</th>
				<th>软件版本</th>
				<th>缺陷层级</th>
				<th>软件种类</th>
				<th>其他描述</th>
		</tr>
		</thead>
		<tbody>
			<%
				int i = 1;
				while (iter.hasNext()) {
					BugInputModel bug = (BugInputModel) iter.next();
			%>
			<tr>
				<td><%=bug.getBug_Finder()%></td>
				<td><%=bug.getBug_Time()%></td>
				<td><%=bug.getBug_Name()%></td>
				<td><%=bug.getBug_From()%></td>
				<td><%=bug.getBug_Fromv()%></td>
				<td><%=bug.getBug_Level()%></td>
				<td><%=bug.getBug_Type()%></td>
				<td><%=bug.getBug_Desc()%></td>
			</tr>
			<%
				i++;
				}
			%>
			
		</tbody>
	</table>
	
	   <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
	
</body>
</html>
