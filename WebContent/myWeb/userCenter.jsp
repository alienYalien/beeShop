<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
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
        <title>我的账户</title>
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
							我的账户
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Brade Come End -->
		<!--Cut Page Medile Section Start-->
		<div class="cut-page-medile-section">
			 <div class="container">
				 <div role="tabpanel" class="tab-pane" id="address">
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
			 		
			 							<div class="col-lg-6 col-md-6">
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




