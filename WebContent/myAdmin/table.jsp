<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.grid.css" />
<link rel="stylesheet" href="css/bootstrap.css"/> 

<title>商品列表</title>
</head>
<body>
<div class="container-fluid">

<div class="text-right"><a class="btn btn-warning" href="${pageContext.request.contextPath }/admin/goods_add.jsp">添加商品</a></div>
	
	<br>
		
	<ul role="tablist" class="nav nav-tabs">

        <li <c:if test="${type==0 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list">全部商品</a></li>
       <li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list?type=1">条幅推荐</a></li> 
        <li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list?type=2">热销推荐</a></li>
        <li	<c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="${pageContext.request.contextPath }/admin/goods_list?type=3">新品推荐</a></li>
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
         	<td><p><a href="${pageContext.request.contextPath }/goods_detail?id=${g.id }" target="_blank"><img src="${pageContext.request.contextPath }${g.cover}" width="100px" height="100px"></a></p></td>
         	<td><p><a href="${pageContext.request.contextPath }/goods_detail?id=${g.id }" target="_blank">${g.name }</a></p></td>
         	<td><p>${g.intro }</p></td>
         	<td><p>${g.price }</p></td>
         	<td><p>${g.type.name }</p></td>
			<td>
				<p>
				
			<%-- 	<c:choose>
					<c:when test="${g.isScroll }">
						<a class="btn btn-info" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id}&method=remove&typeTarget=1&pageNo=${p.pageNo}&type=${type}">移除条幅</a>							
					</c:when>
					<c:otherwise>
						<a class="btn btn-primary" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id}&method=add&typeTarget=1&pageNo=${p.pageNo}&type=${type}">加入条幅</a>
					</c:otherwise>
				</c:choose> --%>

				<c:choose>
					<c:when test="${g.isHot }">
						<a class="btn btn-info" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id}&method=remove&typeTarget=2&pageNo=${p.pageNo}&type=${type}">移除热销</a>							
					</c:when>
					<c:otherwise>
						<a class="btn btn-primary" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id}&method=add&typeTarget=2&pageNo=${p.pageNo}&type=${type}">加入热销</a>
					</c:otherwise>
				</c:choose>				
				
				<c:choose>
					<c:when test="${g.isNew }">
						<a class="btn btn-info" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id}&method=remove&typeTarget=3&pageNo=${p.pageNo}&type=${type}">移除新品</a>							
					</c:when>
					<c:otherwise>
						<a class="btn btn-info" href="${pageContext.request.contextPath }/admin/goods_recommend?id=${g.id}&method=add&typeTarget=3&pageNo=${p.pageNo}&type=${type}">加入新品</a>
					</c:otherwise>
				</c:choose>					
				
				</p>
				<a class="btn btn-success" href="${pageContext.request.contextPath }/admin/goods_editshow?id=${g.id}&pageNo=${p.pageNo}&type=${type}">修改</a>
				<a class="btn btn-danger" href="${pageContext.request.contextPath }/admin/goods_delete?id=${g.id}&pageNo=${p.pageNo}&type=${type}">删除</a>
			</td>
       	</tr>
         
     </c:forEach>
</table>

<br>
<!-- 分页 -->
<jsp:include page="page.jsp">
<jsp:param value="/admin/goods_list" name="url"/>
<jsp:param value="&type=${type }" name="param"/>
</jsp:include>
<br>
</div>
</body>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript" src="js/jquery.grid.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">
	$('select').select();
	var head = [{
				label: 'ID',
				width: 100,
				sortable: 'default',
				name: 'id'	
			},{
				label:'图片',
				width: 150,
				sortable: 'default',
				name:'name'	
			},{
				label:'名称',
				width:150	
			},{
				label: '介绍',
				width: 150	
			},{
				label: '价格',
				minWidth: 200	
			},{
				label: '类目',
				width: 120	
			},{
				label: '是否审核',
				width:100	
			}];
			
	var oper = [{label:'移除热销',onclick:function(){
						alert('移除热销');
				}},{label:'移除新品',onclick: function(){
					alert('移除新品')	
				}},{label:'编辑',onclick:function(){
						alert('编辑');
				}},{label:'删除',onclick:function(){
						alert('删除');
				}}]
	var body = [ {},oper];
		$('.grid').Grid({
			thead: head,
			tbody: body,
			height:400,
			checkbox: {
				single:true	
			},
			operator: {
				type : "normal",
				width : 100	
			},
			sortCallBack : function(name,index,type){
				alert(name+","+index+','+type);
			}
			
		});
	
	$('.grid').Grid('addLoading');
	
	/// 模拟异步
	setTimeout(function(){
		$('.grid').Grid('setData',body, head);
	},2000)
	
	
	$('.pagination').pagination(100,{
		callback: function(page){
			alert(page);	
		},
		display_msg: false
	});
	
	$('.search-box input[type=radio]').click(function(e) {
        if($(this).prop('checked')){
			if($(this).attr('data-define') === 'define'){
				$('.define-input').show();
			}else{
				$('.define-input').hide();
			}
		}
    });
</script>
</html>
