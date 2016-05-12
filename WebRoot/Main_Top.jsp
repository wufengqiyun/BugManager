<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Main_top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/style.css" rel="stylesheet" type="text/css" />	
	<script language="JavaScript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="css/styleleft.css" />
	<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	});	
});	
</script>


  </head>
  
  <body style="background:#424f63 repeat-x;">
	
	
  <!--   <div class="topleft">
    <a href="#" target="_parent"><img src="images/logo.png" title="系统首页" /></a>
    </div> -->
        
    <ul class="nav">
    <li><a href="default.html" target="rightFrame" class="selected"><img src="images/icon01.png" title="工作台" /><h2>信息管理</h2></a></li>
    <li><a href="imglist.html"  target="rightFrame"><img src="images/icon03.png" title="模块设计" /><h2>缺陷分析</h2></a></li>
    <li><a href="tab.html"  target="rightFrame"><img src="images/icon06.png" title="系统设置" /><h2>系统管理</h2></a></li>
    </ul>
            
    <!-- <div class="topright">    
    <ul>
    <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="login.html" target="_parent">退出</a></li>
    </ul> -->
     
  <!--   <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>   -->  
    <div class="nav-top">
	<span>缺陷管理系统</span>
    <div class="nav-topright">
    	<p>上次登陆时间：2015-04-15 22:33:50   登陆IP：192.168.1.1</p>
        <span>您好：管理员</span><span>注销</span>
    </div>
</div>
    </div>
    
</body>

</html>
