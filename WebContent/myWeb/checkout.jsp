<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE]><![endif]-->
<!--[if lt IE 7 ]> <html lang="en" class="ie6">    <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7">    <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8">    <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="ie9">    <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>购物车结算</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- Google Fonts
		============================================ -->		
		
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600&amp;subset=latin,latin-ext" type="text/css" media="all" />

		<link href='https://fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>
					
        <!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">        

 		<!-- CSS  -->
		
		<!-- Bootstrap CSS
		============================================ -->      
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
		<!-- owl.carousel CSS
		============================================ -->      
        <link rel="stylesheet" href="css/owl.carousel.css">
        
		<!-- owl.theme CSS
		============================================ -->      
        <link rel="stylesheet" href="css/owl.theme.css">
           	
		<!-- owl.transitions CSS
		============================================ -->      
        <link rel="stylesheet" href="css/owl.transitions.css">  
		
		<!-- meanmenu CSS
		============================================ -->		
        <link rel="stylesheet" href="css/meanmenu.min.css" media="all" />
        
		<!-- font-awesome.min CSS
		============================================ -->      
        <link rel="stylesheet" href="css/fancybox/jquery.fancybox.css">
        
		<!-- font-awesome.min CSS
		============================================ -->      
        <link rel="stylesheet" href="css/font-awesome.min.css">
        
 		<!-- animate CSS
		============================================ -->         
        <link rel="stylesheet" href="css/animate.css">
		
		<!-- nivo slider CSS
		============================================ -->
		<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
		<link rel="stylesheet" href="css/preview.css" type="text/css" media="screen" />				
        
 		<!-- normalize CSS
		============================================ -->        
        <link rel="stylesheet" href="css/normalize.css">
   
        <!-- main CSS
		============================================ -->          
        <link rel="stylesheet" href="css/main.css">
        
        <!-- style CSS
		============================================ -->          
        <link rel="stylesheet" href="style.css">
        
        <!-- responsive CSS
		============================================ -->          
        <link rel="stylesheet" href="css/responsive.css">
        
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="check-out-page">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        
		<!-- Header Area Start-->	
      	<%@ include file="header.jsp"%>
      	<!-- Header Area End-->	
		
		<!-- Brade Come Start -->
		<div class="braed-come">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="braed">
							<a href="#"><i class="fa fa-home"></i></a>
							<span class="navegation-page">></span> 
							结算
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Brade Come End -->
		<!--Cut Page Medile Section Start-->
		<div class="cut-page-medile-section">
			 <div class="container">
			 	<div class="row">
			 		<div class="col-lg-12  col-md-12">
			 			<div class="cut-page-tab bg-bd"> 
			 				<p class="tab-heading">结算</p>
			 				<ul class="nav-tabs" role="tablist">
			 					<li role="presentation"><a href="#sign" aria-controls="sign" role="tab" data-toggle="tab"><span><em>01.</em>我的账户</span></a></li>
				                <li role="presentation" class="active"><a href="#summary" aria-controls="summary" role="tab" data-toggle="tab"><span><em>02.</em>购物车</span></a></li> 				
			 					<li role="presentation"><a href="#address" aria-controls="address" role="tab" data-toggle="tab"><span><em>03.</em>收货地址</span></a></li>
			 					<li role="presentation"><a href="#shipping" aria-controls="shipping" role="tab" data-toggle="tab"><span><em>04.</em>订单提交</span></a></li>
			 					<li role="presentation"><a href="#payment" aria-controls="payment" role="tab" data-toggle="tab"><span><em>05.</em>支付订单</span></a></li> 
							</ul> 
			 				<div class="tab-content">
			 					<div role="tabpanel" class="tab-pane active  table-responsive" id="summary">		 					
			 						<c:choose><c:when test="${car.allAmount == 0}">
			 							<div class="fist-wist">
											<p class="tab-heading">空空如也！</p> 
											<button class="button" onclick='location.href="${pageContext.request.contextPath }/myWeb/goodsList"'> 前往购物</button>
										</div>
									</c:when><c:otherwise>
			 						<table class="table table-bordered">
			 							<thead class="fast-tabel">
			 								<tr>                    
			 									<th class="tr-qty">图片</th>
			 									<th class="tr-qty">商品名称</th>		 									
			 									<th class="tr-qty">价格</th>
			 									<th class="tr-qty">数量</th>
			 									<th class="tr-qty">操作</th>
			 									<th class="tr-qty"></th>
			 									<!-- <th class="tr-ammount">总价</th>  -->			 									
			 								</tr>
			 							</thead>
			 							<tfoot class="thard-tabel"> 
			 								<tr>
			 									<td colspan="2"></td>
			 									<td colspan="2" class="text totel big-totol">总价</td>
			 									<td colspan="2" class="totel big-totol">${car.allPrice }</td>
			 								</tr>
			 							</tfoot> 
			 							<tbody class="sceand-tabel">		
			 								<c:forEach items="${car.carList }" var="c">           
			 								<tr>
			 									<td class="td-img-tr">
			 										<span class="td-img">
			 											<img src="${pageContext.request.contextPath }${c.image1}" alt="${c.name}">
			 										</span>		
			 									</td> 
			 					   				<td class="td-p-title">
			 					   					<a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${c.goodsid }">
			 					   					<p>${c.name }</p></a>
			 					   					<small>类别 :${c.typename }</small> 	
			 					   				</td> 
			 									<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>¥ ${c.price }</span>
				 					   				</div>			 							
			 									</td> 
			 									<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>${c.amount }</span>
				 					   				</div>			 							
			 									</td> 
			 									<td>
			 										<div class="td-quentety">
				 					   					<a href="${pageContext.request.contextPath }/myWeb/carReduce?carid=${c.id }&type=${1}">
				 					   						<div class="dec qtybutton">-</div>
				 					   					</a>
				 					   					<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${c.goodsid }&type=${0}">
				 					   						<div class="inc qtybutton">+</div>
				 					   					</a>		
				 					   				</div>	 	
				 					   			</td> 
												<td class="td-trash">
			 											<a href="${pageContext.request.contextPath }/myWeb/carReduce?carid=${c.id }&type=${2}"><i class="fa fa-trash"></i></a>
			 									</td> 	
			 									<!-- 
			 									<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>£ 23.37</span>
				 					   				</div>			 							
			 									</td> 
			 									 -->			 									
			 								</tr>
			 								</c:forEach>
			 							</tbody>
			 						</table>
			 						</c:otherwise></c:choose>
			 						<div class="bootom-section">
			 							<ul>
			 								<li class="con-shopp"><a href="/myWeb/home" class="button">继续购物</a></li>
			 								<li class="pro-check"><a href="${pageContext.request.contextPath }/myWeb/orderPayment" class="button last-li">确认结算</a></li>
			 							</ul>
			 						</div>								
			 					</div>
			 					<div role="tabpanel" class="tab-pane" id="sign">
			 		<div class="row">
			 			<div class="col-lg-6 col-md-6">
			 				<div class="register-account border">
			 					<p class="account-title">我的账户</p>
			 					<div>
			 						<label class="input-heding"><strong>用户名：</strong></label>			 									
			 						<label class="input-heding">${user.name }</label>
			 					</div>
			 				</div>
			 				<div>
			 					<label class="input-heding"><strong></strong></label>			 									
			 				</div>
			 				<div class="register-account border">
			 					<p class="account-title">修改密码</p>
			 					<div>
			 					 	<form action="${pageContext.request.contextPath }/myWeb/userChangePwd" method="post">          
			 							<label class="input-heding"><strong>原密码：</strong></label>			 									
			 							<input class="input" type="text" name="password" placeholder="请输入原密码">
			 							<label class="input-heding"><strong>新密码：</strong></label>			 									
			 							<input class="input" type="text" name="newPassword" placeholder="请输入新密码">
			 							<label class="input-heding"><strong></strong></label>
			 							<c:if test="${!empty msg }">
					   					<p class="duboll-requer" >${msg }</p>
					  					</c:if>
					  					<c:if test="${!empty failMsg }">
					   					<p class="duboll-requer" >${failMsg }</p>
					  					</c:if>					  					 
			 							<button class="button"  type="submit">修改</button>
			 						</form>
			 					</div>
			 				</div>
			 				
			 			</div>
			 		
			 								 							
			 						</div>
			 					</div>
			 					<div role="tabpanel" class="tab-pane" id="address">
									<div class="address">									
			 								<div class="address border main-form ">
			 								<p class="account-title ">收货信息</p>
											<p class="requer"></p>
											<c:if test="${!empty recieveMsg }">
					   						<p class="duboll-requer" >${recieveMsg }</p>
					  						</c:if>					  					
											<form action="${pageContext.request.contextPath }/myWeb/userChangeAddress" method="post">
												<label class="input-label">收货人 *</label>
												<input class="input" type="text" name="name" value="${user.name }" placeholder="请输入收货人"/>

												<label class="input-label">收货电话 *</label>
												<input class="input" type="text" name="phone" value="${user.phone }" placeholder="请输入收货电话"/>

												<label class="input-label">收货地址</label>
												<input class="input" type="text" name="address" value="${user.address }" placeholder="请输入收货地址"/>
												
												<button class="button"  type="submit">修改</button>
											</form>
			 								</div>
										<p class="account-title"></p> 
										<a class="button"  href="/myWeb/home">继续购物</a>
									</div>
			 					</div>
			 					<div role="tabpanel" class="tab-pane  table-responsive" id="shipping">
 			 						<table class="main-tabel table table-bordered">  
			 							<tbody class="sceand-tabel tabel-bootom">
			 								<c:forEach items="${car.carList }" var="c">   
			 								<tr>
			 									<td class="td-radio">
			 										<input type="radio">
			 									</td>
			 									<td class="td-img-tr">
			 										<span class="td-img">
			 											<img src="${pageContext.request.contextPath }${c.image1}" alt="${c.name}" />
			 										</span>		
			 									</td> 
			 					   				<td class="td-p-title">
			 					   					<a href="${pageContext.request.contextPath }/myWeb/goodDetailS?id=${c.goodsid }">
			 					   					<p>${c.name }</p></a>
			 					   					<small>类别 :${c.typename }</small> 	
			 					   				</td>  
			 					   				<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>¥ ${c.price } X ${c.amount }</span>
				 					   				</div>			 							
			 									</td>   
			 								</tr>
			 								</c:forEach>
			 							</tbody>
			 							<tbody class="trems">
			 								<tr>
			 									<td>
			 										<input type="checkbox">
			 									</td>
			 									<td colspan="3">
			 										<p>我已阅读同意一下协议并遵守相关规定。<a href="#">(点击此阅读详细协议说明）</a></p>
			 									</td>
			 								</tr>
			 							</tbody>
			 						</table>
			 						<div class="bootom-section">
			 							<ul>
			 								<li class="con-shopp"><a href="/myWeb/home" class="button">继续购物</a></li>
			 								<li class="pro-check"><a href="{pageContext.request.contextPath }/myWeb/orderPayment" class="button last-li">确认结算</a></li>
			 							</ul>
			 						</div>
			 					</div>
			 					<div role="tabpanel" class="tab-pane  table-responsive" id="payment">
									<div class="address">									
			 							<div class="address border main-form ">
			 								<c:choose><c:when test="${!empty payMsg }">
			 									<c:if test="${payMsg ==0 }">
			 										<p class="account-title" >支付成功！</p>					   					
					   								<a class="button"  href="/myWeb/orderList">查看订单>></a>
			 									</c:if>
			 									<c:if test="${payMsg ==1 }">
			 										<p class="account-title" >购物车为空！</p>					   					
					   								<a class="button"  href="/myWeb/goodsList">前往购物>></a>
			 									</c:if>
					  						</c:when><c:otherwise> 
			 								<p class="account-title ">支付金额: ${car.allPrice }</p>
											<p class="requer"></p>														  					
											<form action="${pageContext.request.contextPath }/myWeb/orderPayment" method="post">
												<label>
													<input type="checkbox" name="paytype" value="1"/>
													<img src="img/payment/wechat.jpg" alt="微信支付">
												</label>			
												<label>
													<input type="checkbox" name="paytype" value="2"/>
													<img src="img/payment/alipay.jpg" alt="支付宝支付">					
												</label>
												<label>
													<input type="checkbox" name="paytype" value="3" />
													<img src="img/payment/offline.jpg" alt="货到付款">
													(默认)
												</label>
												<label class="input-heding"></label>
												<button class="button"  type="submit">确认结算</button>
											</form>
										</c:otherwise></c:choose>
			 							</div>
			 						</div>  		 				
			 					</div>
			 		</div>
			 	</div>
			 </div>
		</div>

		<!-- Cut Page Medile Section Start End-->
			
		<!-- Footer Area Start-->	
      	<%@ include file="footer.jsp"%>
		<!-- Footer Area End -->
		
        <!-- JS --> 


 		<!-- jquery-1.11.3.min js
		============================================ -->         
        <script src="js/vendor/jquery-1.11.3.min.js"></script>
		
		
        <!-- price-slider js
		============================================ -->         
        <script src="js/price-slider.js"></script>		
        
 		<!-- bootstrap js
		============================================ -->         
        <script src="js/bootstrap.min.js"></script>
        
   		<!-- owl.carousel.min js
		============================================ -->       
        <script src="js/owl.carousel.min.js"></script>
		
		<!-- jquery-meanmenu js -->
		<script src="js/jquery.meanmenu.js"></script>      
		
		<!-- Nivo slider js
		============================================ --> 		
		<script src="js/jquery.nivo.slider.js" type="text/javascript"></script> 

		<!-- elevateZoom js 
		============================================ -->
		<script src="js/jquery.elevateZoom-3.0.8.min.js"></script>
		
		<!-- jquery.bxslider.min.js
		============================================ -->       
        <script src="js/jquery.bxslider.min.js"></script>		
        
   		<!-- wow js
		============================================ -->       
        <script src="js/wow.js"></script>
        
   		<!-- jquery.scrollUp js
		============================================ -->         
        <script src="js/jquery.scrollUp.min.js"></script>
        
   		<!-- plugins js
		============================================ -->         
        <script src="js/plugins.js"></script>
        
   		<!-- main js
		============================================ -->           
        <script src="js/main.js"></script>
    </body>
</html>

