<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>修改管理员密码</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<br><br>
	
	 <form class="form-horizontal" action="${pageContext.request.contextPath }/myAdmin/adminChangePwd" method="post">
		<input type="hidden" name="admin.id" value="1">
		<input type="hidden" name="admin.username" value="1">
		<div class="form-group">
			<label for="input_pass" class="col-sm-1 control-label">原密码</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input_pass" name="password" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass_new" class="col-sm-1 control-label">新密码</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input_pass" name="newPassword" required="required">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">提交修改</button>
			</div>
		</div>
	</form>
	
	<span style="color:red;"></span>
	
</div>	
</body>
</html>