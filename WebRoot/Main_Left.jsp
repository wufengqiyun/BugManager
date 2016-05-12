<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Main_left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="js/jquery.js"></script>
	<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
});
</script>
	

  </head>
  
  <body>
    <body style="background:#fff3e1;">
	<div class="lefttop"><span></span>菜单</div>
    <dl class="leftmenu">
        
<!--     <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>项目管理
    </div>
    	<ul class="menuson">
        
        <li>
            <div class="header">
            <cite></cite>
            <a href="index.html" target="rightFrame">首页模版</a>
            <i></i>
            </div>
            <ul class="sub-menus">
            <li><a href="#">项目录入</a></li>
            <li><a href="#">项目展示</a></li>
            <li><a href="#">项目修改</a></li>
            <li><a href="#">项目删除</a></li>
            </ul>
        </li>
        
        <li>
            <div class="header">
            <cite></cite>
            <a href="right.html" target="rightFrame">数据列表</a>
            <i></i>
            </div>                
            <ul class="sub-menus">
            <li><a href="javascript:;">文件数据</a></li>
            <li><a href="javascript:;">学生数据列表</a></li>
            <li><a href="javascript:;">我的数据列表</a></li>
            <li><a href="javascript:;">自定义</a></li>
            </ul>
        </li>
        
        <li class="active"><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>
        </ul>    
    </dd> -->
        
    
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>项目管理
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="#" target="rightFrame">项目录入</a><i></i></li>
        <li><cite></cite><a href="#" target="rightFrame">项目展示</a><i></i></li>
        <li><cite></cite><a href="#" target="rightFrame">项目修改</a><i></i></li>
        <li><cite></cite><a href="#" target="rightFrame">项目删除</a><i></i></li>
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>缺陷管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">录入</a><i></i></li>
        <li><cite></cite><a href="#">展示</a><i></i></li>
        <li><cite></cite><a href="#">修改</a><i></i></li>
        <li><cite></cite><a href="#">删除</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>配置项管理</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">录入</a><i></i></li>
        <li><cite></cite><a href="#">展示</a><i></i></li>
        <li><cite></cite><a href="#">修改</a><i></i></li>
        <li><cite></cite><a href="#">删除</a><i></i></li>
    </ul>
    </dd>   
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>缺陷数据导入</div>
    <ul class="menuson">
        <li><cite></cite><a href="#">导入</a><i></i></li>
        <li><cite></cite><a href="#">导出</a><i></i></li>
    </ul>
    </dd>   
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>缺陷数据检索</div>
     <ul class="menuson">
        <li><cite></cite><a href="#">查询检索</a><i></i></li>
    </ul>
    </dd>   
    </dl>

  </body>
</html>
