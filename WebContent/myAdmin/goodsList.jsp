<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>商品列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">
	<br>
	<div class="text-right"><a class="btn btn-warning" href="${pageContext.request.contextPath }/myAdmin/goodsAdd.jsp">添加商品</a></div>	
	<ul role="tablist" class="nav nav-tabs">
        <li <c:if test="${type==0 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/myAdmin/goodsList">全部商品</a></li>
        <li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/myAdmin/goodsList?type=1">广告位推荐</a></li> 
        <li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/myAdmin/goodsList?type=2">热销推荐</a></li>
        <li	<c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/myAdmin/goodsList?type=3">新品推荐</a></li>
    </ul>
	<br>
	<table class="table table-bordered table-hover">
	<tr>
		<th width="5%">ID</th>
		<th width="10%">图片</th>
		<th width="10%">名称</th>
		<th width="20%">介绍</th>
		<th width="10%">价格</th>
		<th width="10%">类目</th>
		<th width="25%">操作</th>
	</tr>
	
	<c:forEach items="${p.list }" var="g">
         <tr>
         	<td><p>${g.id }</p></td>
         	<td><p><a href="${pageContext.request.contextPath }/goodsDetail?id=${g.id }" target="_blank"><img src="${pageContext.request.contextPath }${g.cover}" width="100px" height="100px"></a></p></td>
         	<td><p><a href="${pageContext.request.contextPath }/goodsDetail?id=${g.id }" target="_blank">${g.name }</a></p></td>
         	<td><p>${g.intro }</p></td>
         	<td><p>${g.price }</p></td>
         	<td><p>${g.type.typename }</p></td>
			<td>
				<p>
				
			<c:choose>
					<c:when test="${g.isScroll }">
						<a class="btn btn-info" href="${pageContext.request.contextPath }/myAdmin/goodsRecommend?id=${g.id}&method=remove&typeTarget=1&pageNo=${p.pageNo}&type=${type}">移除广告位</a>							
					</c:when>
					<c:otherwise>
						<a class="btn btn-primary" href="${pageContext.request.contextPath }/myAdmin/goodsRecommend?id=${g.id}&method=add&typeTarget=1&pageNo=${p.pageNo}&type=${type}">加入广告位</a>
					</c:otherwise>
				</c:choose> 

				<c:choose>
					<c:when test="${g.isHot }">
						<a class="btn btn-info" href="${pageContext.request.contextPath }/myAdmin/goodsRecommend?id=${g.id}&method=remove&typeTarget=2&pageNo=${p.pageNo}&type=${type}">移除热销</a>							
					</c:when>
					<c:otherwise>
						<a class="btn btn-primary" href="${pageContext.request.contextPath }/myAdmin/goodsRecommend?id=${g.id}&method=add&typeTarget=2&pageNo=${p.pageNo}&type=${type}">加入热销</a>
					</c:otherwise>
				</c:choose>				
				
				<c:choose>
					<c:when test="${g.isNew }">
						<a class="btn btn-info" href="${pageContext.request.contextPath }/myAdmin/goodsRecommend?id=${g.id}&method=remove&typeTarget=3&pageNo=${p.pageNo}&type=${type}">移除新品</a>							
					</c:when>
					<c:otherwise>
						<a class="btn btn-info" href="${pageContext.request.contextPath }/myAdmin/goodsRecommend?id=${g.id}&method=add&typeTarget=3&pageNo=${p.pageNo}&type=${type}">加入新品</a>
					</c:otherwise>
				</c:choose>					
				
				</p>
				<a class="btn btn-success" href="${pageContext.request.contextPath }/myAdmin/goodsEditShow?id=${g.id}&pageNo=${p.pageNo}&type=${type}">修改</a>
				<a class="btn btn-danger" href="${pageContext.request.contextPath }/myAdmin/goodsDelete?id=${g.id}&pageNo=${p.pageNo}&type=${type}">删除</a>
			</td>
       	</tr>
         
     </c:forEach>
</table>

<br>
<!-- 分页 -->
<jsp:include page="page.jsp">
<jsp:param value="/myAdmin/goodsList" name="url"/>
<jsp:param value="&type=${type }" name="param"/>
</jsp:include>
<br>
</div>
</body>
</html>