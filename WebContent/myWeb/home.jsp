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
      	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>首页</title>
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
    <body class="home">
  
        
		<!-- Header Area Start-->	
      	<%@ include file="header.jsp"%>
      	<!-- Header Area End-->	
      	
      	<%@ include file="tip.jsp"%>
      	
		<!-- Home Slider Start-->
		<section class="slider-wrap">
			<div class="container"> 
				<div class="slider-area">
					<div class="bend niceties preview-2">
						<div id="ensign-nivoslider" class="slides">	
							<img src="img/slider/slider-1/2.png" alt="" title="#slider-direction-1"  />
							<img src="img/slider/slider-1/1.png" alt="" title="#slider-direction-2"  />
						</div>
						<!-- direction 1 -->
						<div id="slider-direction-1" class="t-cn slider-direction">
							<div class="slider-progress"></div>
							<div class="slider-content t-lfr s-tb slider-1">
								<div class="title-container s-tb-c">
									<h1 class="title1">小王子和小公主的衣橱</h1>
									<h3 class="title2" >给你的孩子一个绚烂的童年！</h3>
									<h4 class="title3" >酷酷的靓靓的衣橱。</h4>
									<button class="shop-button" onclick='location.href="${pageContext.request.contextPath }/myWeb/goodsList"'>立刻购买</button>
								</div>
							</div>	
						</div>
						<!-- direction 2 -->
						<div id="slider-direction-2" class="slider-direction">
							<div class="slider-progress"></div>
							<div class="slider-content t-lfr s-tb slider-2">
								<div class="title-container s-tb-c title-compress">
									<h1 class="title1">蜜蜂儿童专卖</h1>
									<h3 class="title2" >不一样的童装，不一样的童年。</h3>
									<h4 class="title3" >让你的宝宝更阳光！</h4>
									<button class="shop-button"  onclick='location.href="${pageContext.request.contextPath }/myWeb/goodsList"'>立刻购买</button>
								</div>
							</div>	
						</div>
					</div>
				</div>			
			</div>
		</section>
		<!-- Home Slider End --> 	
		<!-- Promotion Area	Start -->	
		<section class="promotion-area">
			<div class="container">
				<div class="row">
					<div class="promotion">
					
						<c:forEach begin="0" end="5" var="i">
						<c:set var="g" value="${bannerList[i]}" />
						<c:if test="${!empty g }">
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-promotion">
								<a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}"/> </a>
								<div class="singleh">
									<h3>${g.name}</h3>
									<p>${g.intro}</p>
									<span><a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}">查看更多</a></span>
								</div>
							</div>
						</div>
						</c:if>
						</c:forEach>
					
					</div>
				</div>
			</div>
		</section> 
		<!-- Promotion Area End-->
		<!-- Product Area Start -->
		<section class="product-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="product-tab bg-bd">    
							<ul class="tab-menu" role="tablist">
								<li role="presentation" class="active">
									<a href="#arrival" role="tab" data-toggle="tab">
									新品上市
									</a>
								</li>
								<li role="presentation">
									<a href="#bestseller" role="tab" data-toggle="tab">热销商品
									</a>
								</li> 
							</ul>						
							<div class="tab-content"> 
								<div role="tabpanel" class="tab-pane active" id="arrival">    
									<div class="row">
										<div class="all-product"> 									
											<div class="product-slide">
												<div class="col-lg-3 col-sm-4">
													<c:forEach begin="0" end="1" var="i">
													<c:set var="g" value="${newList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
														</div>
														<a href="#"><span class="descount">新品</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>	 
											</div>
											
											<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="2" end="3" var="i">
													<c:set var="g" value="${newList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
														</div>
														<a href="#"><span class="descount">新品</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>		
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="4" end="5" var="i">
													<c:set var="g" value="${newList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
														</div>
														<a href="#"><span class="descount">新品</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="6" end="7" var="i">
													<c:set var="g" value="${newList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
														</div>
														<a href="#"><span class="descount">新品</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="8" end="9" var="i">
													<c:set var="g" value="${newList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
														</div>
													</div>  
													</c:if>
													</c:forEach>					
												</div>		
													
										</div> 										
									</div>
								</div> 
								<div role="tabpanel" class="tab-pane" id="bestseller">    
									<div class="row">
										<div class="all-product">  
													<div class="product-slide">
												<div class="col-lg-3 col-sm-4">
													<c:forEach begin="0" end="1" var="i">
													<c:set var="g" value="${hotList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div> 
															<a href="#"><span class="leval">热销</span></a> 
														</div>
													</div>  
													</c:if>
													</c:forEach>					
												</div>	 
											</div>								
											<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="2" end="3" var="i">	
													<c:set var="g" value="${hotList[i]}" />											
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
															<a href="#"><span class="leval">热销</span></a> 
														</div>
													</div>  
													</c:if>
													</c:forEach>					
												</div>		
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="4" end="5" var="i">
													<c:set var="g" value="${hotList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
														</div>
														<a href="#"><span class="leval">热销</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="6" end="7" var="i">
													<c:set var="g" value="${hotList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
															<a href="#"><span class="leval">热销</span></a>
														</div>
													</div>  
													</c:if>
													</c:forEach>					
												</div>
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="8" end="9" var="i">
													<c:set var="g" value="${hotList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
															 </a>
															 <div class="efface"></div>
															<div class="cart-box"> 
																<div class="product-text">
																	<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
																	<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
																	<a href=""><span class="retweet"><i class="fa fa-retweet"></i></span></a> 
																</div>
																<div class="link">
																	<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
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
															<a href="#"><p>${g.name }</p></a>
															<div class="price">
																<a href=""><h5>￥ ${g.price }<span>￥ ${g.price }</span></h5></a>
															</div>  
															<a href="#"><span class="leval">热销</span></a>
														</div>
													</div>  
													</c:if>
													</c:forEach>					
												</div>	
										 
									  											
										 
										</div>
									</div>
								</div>
							</div>  
						</div>						
					</div>
				</div>
			</div>
		</section> 
		<!-- Product Area End -->
		<!-- Featured Product Area Start -->
		<section class="featured-product-area">
			<div class="container">
				<div class="row">
					<!-- 折扣商品  Start-->
					<%@ include file="sale.jsp" %>
					<!-- 折扣商品  End -->					
					<div class="col-lg-9 col-md-9 col-sm-8">
					<!-- 商家推荐 Start -->
					<%@ include file="recommend.jsp" %>			
					<!-- 商家推荐  End -->
					</div>
				</div> 
			</div> 
		</section>
		<!-- Featured Product Area End-->
		
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

