<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>类目编辑</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<br><br>
	
	<form class="form-horizontal" action="${pageContext.request.contextPath }/myAdmin/typeEdit" method="post">
		<input type="hidden" name="id" value="${t.id }">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">类目名称</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="name" value="${t.typename }" required="required">
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