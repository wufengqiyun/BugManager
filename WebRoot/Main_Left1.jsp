<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/styleleft.css" />
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
<!-- <div class="nav-top">
	<span>个人后台管理系统</span>
    <div class="nav-topright">
    	<p>上次登陆时间：2015-04-15 22:33:50   登陆IP：192.168.1.1</p>
        <span>您好：管理员</span><span>注销</span>
    </div>
</div> -->

<div class="nav-down">
	<div class="leftmenu1">
        <!-- <div class="menu-oc"><img src="images/menu-all.png" /></div> -->
    	<ul>
        	<li>
        		<a>主菜单</a>
            	<a class="a_list a_list1">软件管理</a>
                <div class="menu_list menu_list_first">
                	<a class="lista_first" href="SoftwareInput.jsp" target="rightFrame">录入</a>
                    <a href="#">展示</a>
                    <a href="#">修改</a>
                    <a href="#">删除</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list2">缺陷管理</a>
                <div class="menu_list">
                	<a href="bug/BugInputReadyServlet" target="rightFrame">录入</a>
                    <a href="bug/BugQueryServlet?bugDo=query" target="rightFrame">展示</a>
                    <a href="bug/BugQueryServlet?bugDo=modify" target="rightFrame">修改</a>
                    <a href="bug/BugQueryServlet?bugDo=delete" target="rightFrame">删除</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">配置项管理</a>
                <div class="menu_list">
                	<a href="browseSoftware.action" target="rightFrame">显示软件名</a>
                    <a href="browseBug.action" target="rightFrame">展示</a>
                    <a href="#">修改</a>
                    <a href="#">删除</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">缺陷数据</a>
                <div class="menu_list">
                	<a href="#">导入</a>
                    <a href="#">导出</a>
                </div>
            </li>
        </ul>
    </div>
    </div>
   <!--  <div class="leftmenu2">
    	<div class="menu-oc1"><img src="images/menu-all.png" /></div>
        <ul>
        	<li>
            	<a class="j_a_list j_a_list1"></a>
                <div class="j_menu_list j_menu_list_first">
                	<span class="sp1"><i></i>全局设置</span>
                	<a class="j_lista_first" href="#">基本设置</a>
                    <a href="#">其他设置</a>
                    <a href="#">界面风格</a>
                    <a href="#">系统工具</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list2"></a>
                <div class="j_menu_list">
                	<span class="sp2"><i></i>权限管理</span>
                	<a href="#">基本权限</a>
                    <a href="#">分配权限</a>
                    <a href="#">权限管理</a>
                    <a href="#">成员管理</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list3"></a>
                <div class="j_menu_list">
                	<span class="sp3"><i></i>权限管理</span>
                	<a href="#">基本权限</a>
                    <a href="#">分配权限</a>
                    <a href="#">权限管理</a>
                    <a href="#">成员管理</a>
                </div>
            </li>
        </ul>
        
    </div> -->
    


</body>
</html>