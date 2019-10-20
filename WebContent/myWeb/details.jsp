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
        <title>商品详情</title>
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
        
		<!-- jquery.fancybox.css
		============================================ -->      
        <link rel="stylesheet" href="css/fancybox/jquery.fancybox.css">
        
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
    <body class="single-page">
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
							<span class="navegation-page">商品列表</span> 
							<span class="navegation-page">></span>
							商品详情
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Brade Come End -->
		<!-- Page Medial Section Start-->
		<section class="page-medile-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-9"> 
						<div class="bg-bd">
							<div class="right-all-product" id="right-ap">  	 
								<div class="row">
									<div class="zoomWrapper col-lg-6 col-md-6 col-sm-5"> 
										<div id="img-1" class="zoomWrapper product-image">
											 <a>
												<img id="zoom1"  src="${pageContext.request.contextPath }${g.cover}"  data-zoom-image="${pageContext.request.contextPath }${g.cover }" alt="img" />
											 </a>
										</div> 
										<div class="smol-slide">
											<div class="row">
												<div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-6">	
													<ul class="bxslider" id="gallery_01">
														<li>
															<a href="" class="elevatezoom-gallery active" data-update="" data-image="${pageContext.request.contextPath }${g.image1 }" data-zoom-image="${pageContext.request.contextPath }${g.image1 }"><img src="${pageContext.request.contextPath }${g.image1 }" alt="zo-th-1" />
															</a>
														</li>
														<li>
															<a href="" class="elevatezoom-gallery active" data-update="" data-image="${pageContext.request.contextPath }${g.image2 }"><img src="${pageContext.request.contextPath }${g.image2 }" alt="zo-th-1" />
															</a>
														</li>
														<li>
															<a href="" class="elevatezoom-gallery active" data-update="" data-image="${pageContext.request.contextPath }${g.image1 }" data-zoom-image="${pageContext.request.contextPath }${g.image1 }"><img src="${pageContext.request.contextPath }${g.image1 }" alt="zo-th-1" />
															</a>
														</li>
														<li>
															<a href="" class="elevatezoom-gallery active" data-update="" data-image="${pageContext.request.contextPath }${g.image2 }"><img src="${pageContext.request.contextPath }${g.image2 }" alt="zo-th-1" />
															</a>
														</li>
													</ul> 
												</div>
											</div>
										</div> 
									</div>
									<div class="col-lg-6 col-md-6 col-sm-7">
										<div class="price-box"> 
											<p class="price-box-heading">${g.name }</p>
											<p class="product-reference">
												类别 :<span>${g.type.typename }</span>
											</p>
											<p class="product-condition">
												库存:<span>${g.stock }</span>
											</p>
											<div class="price">
												<h5>￥ ${g.price }<span>￥ ${g.price }</span></h5>
											</div> 
											<p class="desc">${g.intro } </p>
											<div class="action">
												<div class="cart-box"> 
													<div class="price">													
														<c:if test="${!empty addCarMsg }">
															<h5>${addCarMsg }</h5>
														</c:if>  
													</div> 
													<div class="price">	</div> 
													<div class="quantity">
														<p class="product-condition">
															数量 
														</p>
														<div class="dec qtybutton">-</div> 
														<input type="number" name="amount" value="1"> 
														<div class="inc qtybutton">+</div>
													</div> 
													<div class="product-text"> 
														<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id}"><p>加入购物车</p></a>  
													</div> 
												</div> 		
											</div>

											<div class="social-button">
												<button type="button" class="twitter"><i class="fa fa-twitter "></i>twittet</button>
												
												<button type="button" class="facebook"> <i class="fa fa-facebook "></i>facebook </button>
												
												<button type="button" class=" google-plus"> <i class="fa fa-google-plus"></i>google+ </button>
												
												<button type="button" class="pinterest"> <i class="fa fa-pinterest"></i>pinterest </button>
												
											</div>
											<div class="single-rating">
												<p class="product-condition">
													评分
												</p> 
												<div class="rank">
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
													<a href="#"><i class="fa fa-star"></i></a>
												</div>
												<div class="review">
													<ul class="clear">
														<li>  
															<a class="comment"  href="#">查看评论<span>（0）</span></a>
														 </li>
														<li>  
															<a class="pencil "  href="#">我要提问</a>
														</li>
													</ul> 
												</div>
											</div>
																					
										</div> 	
									</div>
								</div>  
							</div>  							
						</div>
						<div class="reviw-tab bg-bd product-tab"> 
							<ul class="tab-menu" role="tablist">
								<li role="presentation" class="active"><a href="#info" aria-controls="info" role="tab" data-toggle="tab">更多介绍</a></li>
								<li role="presentation"><a href="#data" aria-controls="data" role="tab" data-toggle="tab">基本信息</a></li>
								<li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">评论</a></li> 
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="info">
									<div class="reviw-tab-text">
										<p>${g.intro }</p>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane" id="data">
									<table class="tabel-data-sheet">
										<tbody>
											<tr class="odd">
												<td>类别</td>
												<td>${g.type.typename }</td>
											</tr>
											<tr class="even">
												<td>适用年龄</td>
												<td>3-6岁儿童</td>
											</tr>
											<tr class="odd">
												<td>材质</td>
												<td>塑料</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane" id="reviews">
									<div class="tab-vew-reviw">
										<ul>
											<li>
												<span class="reviw-text">
													 评分
												</span> 
												<div class="rank">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>													
												</div>	 
												<div class="reviw-date">
													<h6>gdragaggd</h6>
													<span class="date">
														25/12/2014
													</span>
												</div>
											</li>
											<li class="right-reviw">
												<h6>内容</h6>
												<p>gdrafdshksd</p>
											</li>
										</ul>
										<div class="r-y-w">
											<a href="#"><p>我 要 提 问 ！</p></a>						
										</div>
									</div>
								</div> 
							</div>  
						</div>
						<div class="p-m-s bg-bd"> 
						<!-- 商家推荐 Start -->	
						<%@ include file="recommend.jsp" %>
						<!-- 商家推荐  End -->					
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-12">
					<%@ include file="hot.jsp" %>	
					</div>
				</div>
			</div> 
		</section>
		<!-- Page Medial Section End-->
				
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

