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
        <title>全部商品</title>
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
		
 		<!-- jquery-ui CSS
		============================================ -->         
        <link rel="stylesheet" href="css/jquery-ui.css">
		
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
    <body class="page-one">
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
					<div class="col-lg-12 col-md-12">
						<div class="braed">
							<a href="#"><i class="fa fa-home"></i></a>
							<span class="navegation-page">></span>
							商品列表
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Brade Come End -->
	
		<!-- Page Medile Section Strat-->
		<section class="page-medile-section">
			<div class="container">
				<div class="row">			
					<div class="col-lg-9 col-md-9 col-sm-9">
						<div class="product-right">
							<div class="product-right-tab bg-bd">    
								<ul class="tab-menu top-bg" role="tablist">
									<li class="tab-menu-li-text">
										<span>${typename }</span>
									</li>
									<li>
										<i class="fa"></i>
										<i class="fa"></i>
										<i class="fa"></i>
									</li>
									<li class="tab-menu-li-text">
										<span>  * . *  欢迎光临本店~ </span>
									</li>
									<li>
										<i class="fa"></i>
										<i class="fa"></i>
										<i class="fa"></i>
									</li>
									<li>
										<span>视图模式：</span>
									<li role="presentation" class="active tab-menu-li-one">
										<a href="#arrival" role="tab" data-toggle="tab">
										<i class="fa fa-th-large"></i>
										</a>
									</li>
									<li role="presentation" class="tab-menu-li-one">
										<a href="#bestseller" role="tab" data-toggle="tab"><i class="fa fa-th-list"></i> 
										</a>
									</li>								
									<li>
										<p><i class="fa"></i></p>
									</li>
								</ul>						
								<div class="tab-content"> 
									<div role="tabpanel" class="tab-pane  active" id="arrival">    
										<div class="row">
											<div class="right-all-product">  
												<c:forEach items="${p.list }" var="g">
												<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name }" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href="#"><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
																</div> 
															</div> 													
														</div> 
														<div class="price-box"> 
															<div class="rank">
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart-o"></i></a>
															</div> 
															<a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }</h5></a>
															</div> 
														</div>
													</div>  
												</div>  
												</c:forEach>																													
											</div> 
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="bestseller">
										<div class="row">
											<div class="right-all-product" id="right-ap">  							
												<ul>	
													<c:forEach items="${p.list }" var="g">
													<li> 												
														<div class="row">
															<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"> 
																<div class="product-image">
																	 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name }" /> </a> 
																</div> 
															</div>
															<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
																<div class="price-box"> 
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><p class="price-box-heading">${g.name }</p></a>
																	<div class="price">
																		<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
																		<div class="rank">
																			<a href="#"><i class="fa fa-heart"></i></a>
																			<a href="#"><i class="fa fa-heart"></i></a>
																			<a href="#"><i class="fa fa-heart"></i></a>
																			<a href="#"><i class="fa fa-heart"></i></a>
																			<a href="#"><i class="fa fa-heart-o"></i></a>
																		</div> 										
																	</div> 
																	<p class="desc">${g.intro } </p>
																	<div class="action">
																		<div class="cart-box"> 
																			<div class="product-text">
																				<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																				<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																				<a href="#"><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																				<a href="#"><i class="fa fa-search-plus"></i></a>
																			</div> 
																		</div> 		
																	</div>	
																</div> 	
															</div>
														</div> 								
													</li>
													</c:forEach>
												</ul>
											</div>
										</div>			
									</div> 
								</div>  
									<!-- Page Area Start-->	
									<%@ include file="page.jsp" %>
							</div>								
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3">
						<div class="product-left">
							<div class="beds-section bg-bd">
								<h4 class="pp-left-heading">商品类别</h4>
								<div class="category-menu" id="cate-toggle">
									<ul>
										<c:forEach items="${typeList }" var="t">
										<li ><a  href="${pageContext.request.contextPath }/myWeb/goodsTypeList?typeid=${t.id}">${t.typename }</a></li>
										</c:forEach>
									</ul>
								</div> 	 
							</div>											
						</div>
					</div>				
					<div class="col-lg-3 col-md-3 col-sm-3">
						<div class="add">
							<a><img src="img/free_shipping.jpg" alt="" /></a>
						</div>  
					</div> 
			</div>
		</section>
		<!-- Page Medile Section End-->
				
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