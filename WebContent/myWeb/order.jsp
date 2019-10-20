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
        <title>我的订单</title>
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
        
		<!-- font-awesome.min CSS
		============================================ -->      
        <link rel="stylesheet" href="css/font-awesome.min.css"> 
		
		<!-- meanmenu CSS
		============================================ -->		
        <link rel="stylesheet" href="css/meanmenu.min.css" media="all" />
        
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
        <link rel="stylesheet" href="css/style.css">
        
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
							我的订单
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
			 		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			 			<div class="cut-page-tab bg-bd">  
			 				<div class="wish-content">
			 					<c:if test="${!empty payMsg }">
			 						<div class="fist-wist">
										<p class="tab-heading">${payMsg }</p> 
									</div>
			 					</c:if>
			 				<c:choose><c:when test="${empty orderlist }">
			 					<div class="fist-wist">
									<p class="tab-heading">空空如也！</p> 
									<button class="button" onclick='location.href="${pageContext.request.contextPath }/myWeb/goodsList"'> 前往购物</button>
								</div>
							</c:when><c:otherwise>
							<div class="second-wist table-responsive"> 
	  			 					<table class="main-tabel table table-bordered ">
			 							<thead>
			 								<tr>
			 									<th class=" ">订单编号</th>
			 									<th class=" ">价格</th>
			 									<th class=" ">商品信息</th>
			 									<th class=" ">收货信息</th>
			 									<th class=" ">订单状态</th>
			 									<th class=" ">支付方式</th>
			 									<th class=" ">支付时间</th>
			 								</tr>
			 							</thead> 
										<tbody>
											<c:forEach items="${orderlist }" var="order">
											<tr>
			         							<td><p>${order.id }</p></td>
			         							<td><p>${order.total }</p></td>
			         							<td>
				         							<c:forEach items="${order.itemList }" var="item">
					         							<p>${item.goodsname}(${item.price})x ${item.amount}</p>
				         							</c:forEach>
			         							</td>
			         							<td>
			         								<p>${order.name }</p>
			         								<p>${order.phone }</p>
			         								<p>${order.address }</p>
			         							</td>
												<td>
													<p>
														<c:if test="${order.status==2 }"><span style="color:red;">已付款</span></c:if>
														<c:if test="${order.status==3 }"><span style="color:green;">已发货</span></c:if>
														<c:if test="${order.status==4 }"><span style="color:black;">已完成</span></c:if>					
													</p>
												</td>
												<td>
													<p>
														<c:if test="${order.paytype==1 }">微信</c:if>
														<c:if test="${order.paytype==2 }">支付宝</c:if>
														<c:if test="${order.paytype==3 }">货到付款</c:if>
													</p>
												</td>
												<td><p>${order.datetime }</p></td>
												<!--  
												<td>
													<i class="fa fa-check-square"></i>
												</td>
												<td>
													<i class="fa fa-times"></i>
												</td> 
												 -->		
											</tr>
											</c:forEach>
										</tbody>										
				 					</table> 
								</div>
							</c:otherwise></c:choose>							
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
		
		<!-- jquery-meanmenu js -->
		<script src="js/jquery.meanmenu.js"></script> 
        
   		<!-- owl.carousel.min js
		============================================ -->       
        <script src="js/owl.carousel.min.js"></script> 
		
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

