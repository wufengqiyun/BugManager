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
				<legend class="">表单名</legend>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="input01">发现者&nbsp</label>
				<div class="controls">
					<input type="text" placeholder="请输入发现者名称或代号" class="input-large">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="input01">发现时间</label>
				<div class="controls"> 
					<div class="input-append date form_date" data-date=""
						data-date-format="yyyy-MM-dd">
					<input size="8" type="text" value="" readonly class="input-medium">
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
					<input type="text" placeholder="请输入缺陷名称" class="input-large">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Text input-->
				<label class="control-label" for="input01">来源软件</label>
				<div class="controls">
					<input type="text" placeholder="请输入缺陷所在的软件" class="input-large">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Text input-->
				<label class="control-label" for="input01">软件版本</label>
				<div class="controls">
					<input type="text" placeholder="请输入或选择软件版本代号" class="input-large">
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Select Basic -->
				<label class="control-label">缺陷层级</label>
				<div class="controls">
					<select class="input-large">
						<option>危急（Critical）</option>
						<option>严重（Serious）</option>
						<option>重要（Important）</option>
						<option>常规（Normal）</option>
						<option>轻微（Minor）</option>
					</select>
					<p class="help-block"></p>
				</div>
			</div>
			
			<div class="control-group">
				<!-- Select Basic -->
				<label class="control-label">缺陷种类</label>
				<div class="controls">
					<select class="input-large">
						<option>功能问题F- Function</option>
						<option>接口问题I-Interface</option>
						<option>计算问题C-Computation</option>
						<option>用户界面问题U-User Interface</option>
						<option>文档问题D-Documentation</option>
						<option>其他问题O-Others</option>
					</select>
					<p class="help-block"></p>
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
