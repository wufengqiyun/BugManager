<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
</head>
<body>
	<form class="form-horizontal">
		<fieldset>
		
			<div id="legend" class="">
				<legend class="">提交软件</legend>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="swName">软件名称</label>
				<div class="controls">
					<input type="text" placeholder="请输入软件名称" class="input-large" id="swName" name="swName">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Text input-->
				<label class="control-label" for="swVersion">软件版本</label>
				<div class="controls">
					<input type="text" placeholder="请输入软件版本" class="input-large" id="swVersion" name="swVersion">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
          		<label class="control-label">软件地址</label>

         		 <!-- File Upload -->
          			<div class="controls">
            			<input class="input-file" id="fileInput" type="file">
          			</div>
        	</div>
			
			
			
			<div class="control-group">
				<!-- Textarea -->
				<label class="control-label">其他描述</label>
				<div class="controls">
					<div class="textarea">
						<textarea type="" class="input-xlarge" rows="5"> </textarea>
					</div>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label"></label>
				<!-- Button -->
				<div class="controls">
					<button class="btn btn-default">提交缺陷</button>
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
