<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>客户列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">
	
	<div class="text-right"><a class="btn btn-warning" href="${pageContext.request.contextPath }/myAdmin/userAdd.jsp">添加客户</a></div>
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
		<th width="5%">用户名</th>
		<th width="10%">邮箱</th>
		<th width="10%">收件人</th>
		<th width="10%">电话</th>
		<th width="10%">地址</th>
		<th width="15%">操作</th>
	</tr>
	
	<c:forEach items="${p.list }" var="u">
         <tr>
         	<td><p>${u.id }</p></td>
         	<td><p>${u.username }</p></td>
         	<td><p>${u.email }</p></td>
         	<td><p>${u.name }</p></td>
         	<td><p>${u.phone }</p></td>
         	<td><p>${u.address }</p></td>
			<td>
				<a class="btn btn-info" href="${pageContext.request.contextPath }/myAdmin/userReset.jsp?id=${u.id}&username=${u.username }&email=${u.email}">重置密码</a>
				<a class="btn btn-primary" href="${pageContext.request.contextPath }/myAdmin/userEditShow?id=${u.id}">修改</a>
				<a class="btn btn-danger" href="${pageContext.request.contextPath }/myAdmin/userDelete?id=${u.id}">删除</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

<br>
<!-- 分页 -->
<jsp:include page="page.jsp">
<jsp:param value="/myAddmin/userList" name="url"/>
</jsp:include>
<br>

</div>
</body>
</html>