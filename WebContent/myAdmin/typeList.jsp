<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>分类列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<br>
	
	<div>
		<form class="form-inline" method="post" action="${pageContext.request.contextPath }/myAdmin/typeAdd">
			<input type="text" class="form-control" id="input_name" name="name" placeholder="输入分类名称" required="required" style="width: 500px">
			<input type="submit" class="btn btn-warning" value="添加类目"/>
		</form>
	</div>
	<br>
						<c:if test="${!empty msg }">
				<div class="alert alert-success">${msg }</div>
			</c:if>
						<c:if test="${!empty failMsg }">
				<div class="alert alert-danger">${failMsg }</div>
			</c:if>	
	<br>
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">名称</th>
		<th width="10%">操作</th>
	</tr>
	
	<c:forEach items="${list }" var="t">
         <tr>
         	<td><p>${t.id }</p></td>
         	<td><p>${t.typename }</p></td>
			<td>
				<a class="btn btn-primary" href="${pageContext.request.contextPath }/myAdmin/typeEdit?id=${t.id }">修改</a>
				<a class="btn btn-danger" href="${pageContext.request.contextPath }/myAdmin/typeDelete?id=${t.id }">删除</a>
			</td>
       	</tr>
     </c:forEach>
         
     
     
</table>

</div>
</body>
</html>