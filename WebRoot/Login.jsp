<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
    String IsPostBack="False";  
%>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<script type='text/javascript' src="http://libs.baidu.com/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
	<script type="text/javascript">
	function check_values() {
        if ($("#username").val().length !== 0 && $("#password").val().length !== 0) {
            $("#loginbtn").animate({ left: '0' , duration: 'slow'});
            $("#lockbtn").animate({ left: '260px' , duration: 'slow'});
        }
    }
	/*  function login(){
		SetPwdAndChk();
		alert("你选择了记住密码，我们将记住你的密码：");  
	 	document.getElementById("loginform").submit();
	 } */
			
	$(function(){
  //当用户输入登录信息后，#loginbtn元素出现，点击此按钮将看到登录中效果
  	$('#loginbtn').click(function(){
    //此处定义回调方法
    	SetPwdAndChk();
	 	document.getElementById("loginform").submit();
    $('#loading').removeClass('hidden');//点击登录按钮触发“加载中效果”
  });
});
	</script>
	
	
	<script type="text/javascript">
	 function GetLastUser() {  
        var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";//GUID标识符  
        var usr = GetCookie(id);  
        if (usr != null) {  
            document.getElementById('username').value = usr;  
        } else {  
            document.getElementById('username').value = "  ";  
        }  
        GetPwdAndChk();  
    }  
    //点击登录时触发客户端事件  
       
    function SetPwdAndChk() {  
        //取用户名  
        var usr = document.getElementById('username').value;  
      //  alert("用户名："+usr);  
        //将最后一个用户信息写入到Cookie  
        SetLastUser(usr);  
        //如果记住密码选项被选中  
        if (document.getElementById('chkRememberPwd').checked == true) {  
            //取密码值  
            var pwd = document.getElementById('password').value;  
            alert("你选择了记住密码，我们将记住你的密码："+pwd);  
            var expdate = new Date();  
            expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));  
            //将用户名和密码写入到Cookie  
            SetCookie(usr, pwd, expdate);  
        } else {  
            //如果没有选中记住密码,则立即过期  
            ResetCookie();  
        }  
    }  
       
    function SetLastUser(usr) {  
        var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";  
        var expdate = new Date();  
        //当前时间加上两周的时间  
        expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));  
        SetCookie(id, usr, expdate);  
    }  
    //用户名失去焦点时调用该方法  
       
    function GetPwdAndChk() {  
        var usr = document.getElementById('username').value;  
        var pwd = GetCookie(usr);  
        if (pwd != null) {  
            document.getElementById('chkRememberPwd').checked = true;  
            document.getElementById('password').value = pwd;  
            $("#loginbtn").animate({ left: '0' , duration: 'slow'});
            $("#lockbtn").animate({ left: '260px' , duration: 'slow'});
        } else {  
            document.getElementById('chkRememberPwd').checked = false;  
            document.getElementById('password').value = "";  
        }  
    }  
    //取Cookie的值  
       
    function GetCookie(name) {  
        var arg = name + "=";  
        var alen = arg.length;  
        var clen = document.cookie.length;  
        var i = 0;  
        while (i < clen) {  
            var j = i + alen;  
            //alert(j);  
            if (document.cookie.substring(i, j) == arg) return getCookieVal(j);  
            i = document.cookie.indexOf(" ", i) + 1;  
            if (i == 0) break;  
        }  
        return null;  
    }   
    var isPostBack = "<%=IsPostBack%>";  
    function getCookieVal(offset) {  
        var endstr = document.cookie.indexOf(";", offset);  
        if (endstr == -1)  
            endstr = document.cookie.length;  
        return unescape(document.cookie.substring(offset, endstr));  
    }  
    //写入到Cookie  
  
    function SetCookie(name, value, expires) {  
        var argv = SetCookie.arguments;  
        //本例中length = 3  
        var argc = SetCookie.arguments.length;  
        var expires = (argc > 2) ? argv[2] : null;  
        var path = (argc > 3) ? argv[3] : null;  
        var domain = (argc > 4) ? argv[4] : null;  
        var secure = (argc > 5) ? argv[5] : false;  
        document.cookie = name + "=" + escape(value) + ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + ((path == null) ? "" : ("; path=" + path)) + ((domain == null) ? "" : ("; domain=" + domain)) + ((secure == true) ? "; secure" : "");  
    }  
  
    function ResetCookie() {  
        var usr = document.getElementById('username').value;  
        var expdate = new Date();  
        SetCookie(usr, null, expdate);  
    }  
    </script>
  </head>
  
  <body>
    <!-- 互动登陆界面HTML及其引入类库 //-->

<div class="container-fluid">
    <div class="row">
        <div class="loginpanel">
			<i id="loading" class="hidden fa fa-spinner fa-spin bigicon"></i>
            <h2>
				<span class="fa fa-quote-left "></span> 缺陷管理系统 <span class="fa fa-quote-right "></span>
			</h2>
			<form id="loginform"  action="user/loginServlet"  name="login"  method="post">
            <div>
                <input id="username" name="username" type="text" placeholder="登录账号" onblur="GetPwdAndChk()" onkeydown="check_values();">
                <input id="password" class="input2" name="password" type="password" placeholder="输入密码" onkeydown="check_values();">
				<label class="checkbox" >
      				<input type="checkbox" id="chkRememberPwd" name="chkRememberPwd" checked="checked">记住密码
   				</label>
			
				<div class="buttonwrapper">
					<button id="loginbtn" class="btn btn-warning loginbutton" >
						<span class="fa fa-check"></span>
					</button>
					<span id="lockbtn" class="fa fa-lock lockbutton redborder"></span>
				</div>
            </div>
            </form>
        </div>
    </div>
</div>
  </body>
</html>
