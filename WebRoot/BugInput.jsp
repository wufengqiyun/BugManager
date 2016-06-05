<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="http://libs.baidu.com/bootstrap/2.0.4/js/bootstrap.min.js"></script>
<link href="http://libs.baidu.com/bootstrap/2.0.4/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-datetimepicker.min.css" />
<script type="text/javascript" src="js/bootstrap-datetimepicker.js"
	charset="UTF-8"></script>
<script src="js/bootstrap-datetimepicker.zh-CN.js"
	type="text/javascript"></script> 
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%
		List<String> softwareList=(List<String>)request.getAttribute("softwarelist");
		/* out.println(softwareList); */
	 %>
	<form class="form-horizontal" action="bug/BugInput" method="post" name="bugInput">
		<fieldset>
			<div class="place">
    <ul class="placeul">
    <li>位置：</li>
    <li><a href="#">首页</a></li>
    <li><a href="#">提交缺陷</a></li>
    </ul>
    </div>
			<div id="legend" class="">
				<legend class="">Hello~~~</legend>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="bug_Finder">发现者&nbsp</label>
				<div class="controls">
					<input type="text" placeholder="请输入发现者名称或代号" class="input-large" id="bug_Finder" name="bug_Finder">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="input01">发现时间</label>
				<div class="controls"> 
					<div class="input-append date form_date" data-date=""
						data-date-format="yyyy-mm-dd">
					<input size="8" type="text" value="" readonly class="input-medium" id="bug_Time" name="bug_Time">
					<span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span> 
					<p class="help-block"></p>
					</div>					
				</div>
			</div>
			
			<div class="control-group">
				<!-- Text input-->
				<label class="control-label" for="input01">缺陷名称</label>
				<div class="controls">
					<input type="text" placeholder="请输入缺陷名称" class="input-large" id="bug_Name" name="bug_Name">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Text input-->
				<label class="control-label" for="input01">来源软件</label>
				<div class="controls">
					<!-- <input type="text" placeholder="请输入缺陷所在的软件" class="input-large" id="bug_From" name="bug_From"> -->
					<select class="input-large" id="bug_From" name="bug_From" >
						<%-- <%for(int i=1;i<softwareList.size();i++){%>
							<option><%=softwareList.get(i)%> </option>>
						<%}%> --%>
						<c:forEach items="${softwarelist}" var="item">
							<option>${item} </option>
						</c:forEach>
					</select>
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
			
				<label class="control-label" for="input01">软件版本</label>
				<div class="controls">
					<input type="text" placeholder="请输入或选择软件版本代号" class="input-large" id="bug_Fromv" name="bug_Fromv">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Select Basic -->
				<label class="control-label">缺陷层级</label>
				<div class="controls">
					<select class="input-large" id="bug_Level" name="bug_Level">
						<option>危急(Critical)</option>
						<option>严重(Serious)</option>
						<option>重要(Important)</option>
						<option>常规(Normal)</option>
						<option>轻微(Minor)</option>
					</select>
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Select Basic -->
				<label class="control-label">缺陷种类</label>
				<div class="controls">
					<select class="input-large" id="bug_Type" name="bug_Type">
						<option>功能问题(F- Function)</option>
						<option>接口问题(I-Interface)</option>
						<option>计算问题(C-Computation)</option>
						<option>用户界面问题(U-User Interface)</option>
						<option>文档问题(D-Documentation)</option>
						<option>其他问题(O-Others)</option>
					</select>
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Textarea -->
				<label class="control-label">其他描述</label>
				<div class="controls">
					<div class="textarea">
						<textarea class="input-xlarge" rows="5" id="bug_Desc" name="bug_Desc"></textarea>
					</div>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label"></label>
				<!-- Button -->
				<div class="controls">
					<button class="scbtn">提交缺陷</button>
				</div>
			</div>
		</fieldset>
	</form>

	<script type="text/javascript">
		$('.form_date').datetimepicker({
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0
		});
	</script>
</body>
</html>
