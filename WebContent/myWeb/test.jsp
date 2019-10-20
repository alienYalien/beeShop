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
        <title>Checkout-page</title>
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
        
		<!-- Header Area-->	
        <header class="header-area">
        	<div class="container">
        		<div class="row">	
					<div class="col-lg-12">
						<div class="headet-top">						
							<div class="htop-one">
								<ul class="curency">
									<li>
										<a href="#">Currency : <span>gbp</span><i class="fa fa-caret-down"></i></a>
										<ul>
											<li><a href="#">Dollar<span>(usd)</span></a></li> 
											<li><a href="#">Pound<span>(GBP)</span></a></li> 
										</ul>
									</li> 
								</ul>
							</div>
							<div class="htop-one">
								<ul class="lenguage">
									<li>
										<a href="#">english<i class="fa fa-caret-down"></i></a>
										<ul>
											<li><a href="#">English</a></li> 
											<li><a href="#">اللغة العربية</a></li> 
										</ul>										
									</li> 
								</ul>
							</div>
							<div class="htop-one last">
								<ul class="account">
									<li><a href="#">My account<i class="fa fa-caret-down"></i></a>
										<ul>
											<li><a href="#">My account</a></li> 
											<li><a href="#">My wishlist</a></li> 
											<li><a href="#">Checkout</a></li> 
											<li><a href="#">Log in</a></li> 
										</ul>										
									</li> 
								</ul>
							</div>
						</div> 
					</div>	
				</div>
        	</div>
			<div class="container">
				<div class="header-midile">  
					<div class="row"> 
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="lago">
								<a href="index.html"><img src="img/logo.png" alt="lago" /></a>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="search">
								<form action="#">
									<input type="text" placeholder="search">
									<input type="submit" value="search">
								</form>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"> 
							<ul class="curt">
								<li><a class="total-cart-b" href="#">
									<span>2</span>
									<p>Shopping Cart</p>
									<h6>£ 125.19</h6>									
								</a>
								<div class="curt-list">
									<ul>
										<li class="curt-list-li"> 
											<a href="#"><img src="img/product/printed-chiffon-dress.jpg.png" alt="img"></a>
											<a href="#"><span class="curt-list-item-color">1 X</span><p>Printed</p></a>
											<span>S, Yellow</span>
											<h6>£ 61.19</h6>
										</li>
										<li class="curt-list-li border-li">
											<a href="#"><img src="img/product/printed-dress.chear.jpg.png" alt="img"></a>
											<a href="#"><span class="curt-list-item-color">1 X</span><p>Blouse</p></a>
											<span>L, Orang</span>
											<h6>£ 25.19</h6>
										</li>
										<li><p class="totel">totel</p><h6>£ 61.19</h6></li>
									</ul>
									<button>check out</button>
								</div>									
								</li>
							</ul> 						
						</div> 
					</div>
				</div>
			</div> 
			<div class="container">
				<div class="row">
					<div class="col-lg-12"> 
						<div class="main-menu">
							<ul class="nav floatleft">
								<li class="active"><a href="index.html">home</a>
									<ul class="dworpdown">
										<li><a href="index-2.html">home-2</a></li>
										<li><a href="index-3.html">home-3</a></li>
									</ul>
								</li>
								<li class="mega-menu-one"><a href="shop.html">kids beds</a>
									<ul class="sub-menu">
										<li><a href="shop.html">dresses</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">Sports</a></li> 
											</ul>
										</li>
										<li><a href="shop.html">clothing</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">day</a></li> 
											</ul>
										</li>
										<li><a href="shop.html">handbags</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">Evening</a></li> 
											</ul>
										</li>
										<li><a href="shop.html">shoes</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Cocktail</a></li> 
											</ul>
										</li>
										<li> 
											 <a href="shop.html"><img src="img/block_menu.png" alt="" /></a>  											 
										</li>
									</ul>								
								</li>
								<li class="mega-menu-two"><a href="shop.html">dressers</a> 	
									<ul class="sub-menu">
										<li><a href="shop.html">dresses</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Bootees</a></li>
												<li><a href="shop.html">Blazers</a></li> 
											</ul>
										</li>
										<li><a href="#">clothing</a>
											<ul class="sub-menu">
												<li><a href="shop.html">coats</a></li>
												<li><a href="shop.html">T-shirts</a></li> 
											</ul>
										</li>
										<li><a href="#">handbags</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Bands</a></li>
												<li><a href="shop.html">Furniture</a></li> 
											</ul>
										</li>
										<li><a href="#">shoes</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Bands</a></li>
												<li><a href="shop.html">Lifestyle</a></li>  
											</ul>
										</li> 
									</ul>								
								</li>
								<li class="mega-menu-three"><a href="shop.html">desks</a>
									<ul class="sub-menu">
										<li><a href="shop.html">dresses</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">Sports</a></li> 
											</ul>
										</li>
										<li><a href="#">clothing</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">day</a></li> 
											</ul>
										</li>
										<li><a href="#">handbags</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">Evening</a></li> 
											</ul>
										</li>
										<li><a href="#">shoes</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Cocktail</a></li> 
											</ul>
										</li> 
									</ul>								
								</li>
								<li class="mega-menu-for"><a href="shop.html">bookshelves</a> 
									<ul class="sub-menu">
										<li><a href="shop.html">dresses</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">Sports</a></li> 
											</ul>
										</li>
										<li><a href="#">clothing</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">day</a></li> 
											</ul>
										</li>
										<li><a href="#">handbags</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Cocktail</a></li>
												<li><a href="shop.html">Evening</a></li> 
											</ul>
										</li>
										<li><a href="#">shoes</a>
											<ul class="sub-menu">
												<li><a href="shop.html">Sports</a></li>
												<li><a href="shop.html">Evening</a></li>
												<li><a href="shop.html">day</a></li>
												<li><a href="shop.html">Cocktail</a></li> 
											</ul>
										</li> 
									</ul>								
								</li>
								<li><a href="shop.html">armoires</a></li>
								<li><a href="shop.html">pages</a>
									<ul class="dworpdown">
										<li><a href="shop.html">shope-page</a></li>
										<li><a href="single-product.html">single-product</a></li>
										<li><a href="checkout-page.html">checkout-page</a></li>
										<li><a href="wishlist.html">wishlist</a></li>
										<li><a href="contact-page.html">contact-page</a></li>
									</ul>
								</li>
							</ul> 
						</div>	
					</div>
				</div>				
			</div>
			<!-- mobile-menu-area start -->
			<div class="mobile-menu-area"> 
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="mobile-menu">
								<nav id="dropdown">
									<ul>
										<li><a href="index.html">Home</a>
											<ul> 
												<li><a href="index-2.html">Home 2</a></li>
												<li><a href="index-3.html">Home 3</a></li>
											</ul>
										</li>
										<li><a href="blog.html">kids beds</a>
											<ul>
												<li><a href="shop.html">dresses</a>
													<ul>
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">Sports</a></li> 
													</ul>
												</li>
												<li><a href="shop.html">clothing</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">day</a></li> 
													</ul>
												</li>
												<li><a href="shop.html">handbags</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">Evening</a></li> 
													</ul>
												</li>
												<li><a href="shop.html">shoes</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Cocktail</a></li> 
													</ul>
												</li>
												<li> 
													 <a href="shop.html"><img src="img/block_menu.png" alt="" /></a>  											 
												</li>
											</ul>
										</li>
										<li><a href="shop.html">dressers</a>
											<ul>
												<li><a href="shop.html">dresses</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Bootees  Bags</a></li>
														<li><a href="shop.html">Blazers</a></li> 
													</ul>
												</li>
												<li><a href="#">clothing</a>
													<ul class="sub-menu">
														<li><a href="shop.html">coats</a></li>
														<li><a href="shop.html">T-shirts</a></li> 
													</ul>
												</li>
												<li><a href="#">handbags</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Bands</a></li>
														<li><a href="shop.html">Furniture</a></li> 
													</ul>
												</li>
												<li><a href="#">shoes</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Bands</a></li>
														<li><a href="shop.html">Lifestyle</a></li>  
													</ul>
												</li> 
											</ul>	
										</li>
										<li><a href="shop.html">desks</a>
											<ul class="sub-menu">
												<li><a href="shop.html">dresses</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">Sports</a></li> 
													</ul>
												</li>
												<li><a href="#">clothing</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">day</a></li> 
													</ul>
												</li>
												<li><a href="#">handbags</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">Evening</a></li> 
													</ul>
												</li>
												<li><a href="#">shoes</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Cocktail</a></li> 
													</ul>
												</li> 
											</ul>	
										</li>
										<li><a href="shop.html">bookshelves</a>
											<ul class="sub-menu">
												<li><a href="shop.html">dresses</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">Sports</a></li> 
													</ul>
												</li>
												<li><a href="#">clothing</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">day</a></li> 
													</ul>
												</li>
												<li><a href="#">handbags</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Cocktail</a></li>
														<li><a href="shop.html">Evening</a></li> 
													</ul>
												</li>
												<li><a href="#">shoes</a>
													<ul class="sub-menu">
														<li><a href="shop.html">Sports</a></li>
														<li><a href="shop.html">Evening</a></li>
														<li><a href="shop.html">day</a></li>
														<li><a href="shop.html">Cocktail</a></li> 
													</ul>
												</li> 
											</ul>									
										</li>
										<li><a href="shop.html">armoires</a></li>
										<li><a href="shop.html">pages</a>
											<ul>
												<li><a href="shop.html">shope-page</a></li>
												<li><a href="single-product.html">single-product</a></li>
												<li><a href="checkout-page.html">checkout-page</a></li>
												<li><a href="wishlist.html">wishlist</a></li>
												<li><a href="contact-page.html">contact-page</a></li>
											</ul>										
										</li>
									</ul>
								</nav>
							</div>					
						</div>
					</div>
				</div>	
			</div>
			<!-- mobile-menu-area end -->			
        </header>
		<!-- Brade Come Start -->
		<div class="braed-come">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="braed">
							<a href="#"><i class="fa fa-home"></i></a>
							<span class="navegation-page">></span> 
							Your shopping cart
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
			 				<p class="tab-heading">Shopping-cart summary</p>
			 				<ul class="nav-tabs" role="tablist">
			 					<li role="presentation" class="active"><a href="#summary" aria-controls="summary" role="tab" data-toggle="tab"><span><em>01.</em>Summary</span></a></li>
			 					<li role="presentation"><a href="#sign" aria-controls="sign" role="tab" data-toggle="tab"><span><em>02.</em>Sign in</span></a></li>
			 					<li role="presentation"><a href="#address" aria-controls="address" role="tab" data-toggle="tab"><span><em>03.</em>Address</span></a></li>
			 					<li role="presentation"><a href="#shipping" aria-controls="shipping" role="tab" data-toggle="tab"><span><em>04.</em>Shipping</span></a></li>
			 					<li role="presentation"><a href="#payment" aria-controls="payment" role="tab" data-toggle="tab"><span><em>05.</em>Payment</span></a></li>
								 <li role="presentation" class="active"><a href="#summary" aria-controls="summary" role="tab" data-toggle="tab"><span><em>01.</em>Summary</span></a></li>
			 					<li role="presentation"><a href="#sign" aria-controls="sign" role="tab" data-toggle="tab"><span><em>02.</em>Sign in</span></a></li>
			 					<li role="presentation"><a href="#address" aria-controls="address" role="tab" data-toggle="tab"><span><em>03.</em>Address</span></a></li>
			 					<li role="presentation"><a href="#shipping" aria-controls="shipping" role="tab" data-toggle="tab"><span><em>04.</em>Shipping</span></a></li>
			 					<li role="presentation"><a href="#payment" aria-controls="payment" role="tab" data-toggle="tab"><span><em>05.</em>Payment</span></a></li> 
							</ul> 
			 				<div class="tab-content">
			 					<div role="tabpanel" class="tab-pane active  table-responsive" id="summary">
			 						<table class="table table-bordered">
			 							<thead class="fast-tabel">
			 								<tr>
			 									<th class="tr-pro">Product</th>
			 									<th class="tr-des">Description</th>
			 									<th class="tr-avail">Availability</th>
			 									<th class="tr-price">Unit price</th>
			 									<th class="tr-qty">Qty</th>
			 									<th class="tr-tras"> </th>
			 									<th class="tr-ammount">Total</th>
			 								</tr>
			 							</thead>
			 							<tfoot class="thard-tabel"> 
			 								<tr>
			 									<td colspan="2"></td>  
			 								  	<td colspan="3" rowspan="1" class="totel big-totol">Total products (tax incl.)</td>
			 					   				<td colspan="2" class="totel"><span>£ 23.37</span></td> 	 	 
			 								</tr>
			 								<tr>
			 									<td colspan="2"></td>
			 									<td colspan="3" class="text totel big-totol">totel</td>
			 									<td colspan="2" class="totel big-totol">£ 23.37</td>
			 								</tr>
			 							</tfoot> 
			 							<tbody class="sceand-tabel">
			 								<tr>
			 									<td class="td-img-tr">
			 										<span class="td-img">
			 											<img src="img/product/printed-dress.jpg.png" alt="img">
			 										</span>		
			 									</td> 
			 					   				<td class="td-p-title">
			 					   					<a href="#"><p>Printed Chiffon Dress</p></a>
			 					   					<small>SKU :span</small>
			 					   					<small>Size : S, Color : Yellow</small>
			 					   				</td> 
			 									<td class="td-stok"><span>In stock</span></td>  
			 									<td class="td-unite">
				 					   				<ul>
				 					   					<li>£ 23.37</li>
				 					   					<li>-5%</li>
				 					   					<li>£ 24.60</li>
				 					   				</ul>			 										
			 									</td> 
			 									<td class="td-quentety">
													<input type="number" value="1">
				 					   				<div class="dec qtybutton">-</div> 
				 					   				<div class="inc qtybutton">+</div> 	 
			 									</td> 
			 									<td class="td-trash">
			 										<a href="#"><i class="fa fa-trash"></i></a>
			 									</td> 
			 									<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>£ 23.37</span>
				 					   				</div>			 							
			 									</td> 
			 								</tr>
			 							</tbody>
			 						</table>
			 						<div class="bootom-section">
			 							<ul>
			 								<li class="con-shopp"><a href="#" class="button">contenue shopping</a></li>
			 								<li class="pro-check"><a href="#" class="button last-li">proceed to checkout</a></li>
			 							</ul>
			 						</div>								
			 					</div>
			 					<div role="tabpanel" class="tab-pane" id="sign">
			 						<div class="row">
			 							<div class="col-lg-6 col-md-6">
			 								<div class="new-account border">
			 									<p class="account-title">Create an account</p>
			 									<p class="short-text">Please enter your email address to create an account.</p>
			 									<form action="#">
			 										<label class="input-heding">Email address</label>
			 										<input class="input" type="text">
			 										<button class="button"  type="submit">create an account</button>
			 									</form>
			 								</div>
			 							</div>
			 							<div class="col-lg-6 col-md-6">
			 								<div class="register-account border">
			 									<p class="account-title">Already registered?</p>
			 									<form action="#">
			 										<label class="input-heding">Email address</label>
			 										<input class="input" type="text">
			 										<label class="input-heding">Password</label>
			 										<input class="input" type="password">
			 									</form>
			 									<a href="#" class="forget">Forgot your password?</a>
			 									<button class="button" type="submit">sign in</button>
			 								</div>
			 							</div>
			 						</div>
			 					</div>
			 					<div role="tabpanel" class="tab-pane" id="address">
									<div class="address">
										<div class="main-form  border">
											<p class="account-title">Your addresses</p>
											<p class="fill-text">To add a new address, please fill out the form below.</p>
											<p class="requer">*Required field</p>
											<form action="#">
												<label class="input-label">First name *</label>
												<input class="input" type="text">

												<label class="input-label">Last name *</label>
												<input class="input" type="text">

												<label class="input-label">Company</label>
												<input class="input" type="text">

												<label class="input-label">Address *</label>
												<input class="input" type="text">

												<label class="input-label">Address (Line 2)</label>
												<input class="input" type="text">

												<label class="input-label">City *</label>
												<input class="input" type="text">

												<label class="input-label">Zip/Postal Code *</label>
												<input class="input" type="text">

												<label class="input-label">Country *</label>
												 <select>
												 	<option class="input"  value="uk">united kingdom</option>
												 </select>

												<label class="input-label">Home phone **</label>
												<input class="input" type="text">
												<p class="duboll-requer">** You must register at least one phone number.</p>
												<label class="input-label">Mobile phone **</label>
												<input class="input" type="text">

												<label class="input-label">Additional information</label>
												<input class="input" type="text">

												<label class="input-label">Please assign an address title for future reference. *</label>
												<input class="input" type="text"> 
											</form>
											<button class="button"  type="submit">submit</button>
										</div>
										<p class="account-title"></p> 
										<a class="button"  href="#">back to your addresses</a>
									</div>
			 					</div>
			 					<div role="tabpanel" class="tab-pane  table-responsive" id="shipping">
 			 						<table class="main-tabel table table-bordered">  
			 							<tbody class="sceand-tabel tabel-bootom">
			 								<tr>
			 									<td class="td-radio">
			 										<input type="radio">
			 									</td>
			 									<td class="td-img-tr"> 	
			 									</td> 
			 					   				<td class="td-p-title">
			 					   					<a href="#"><p>Printed Chiffon Dress</p></a>
			 					   					<small>SKU :span</small>
			 					   					<small>Size : S, Color : Yellow</small>
			 					   				</td>    
			 									<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>free</span>
				 					   				</div>			 							
			 									</td> 
			 								</tr>
			 							</tbody>
			 							<tbody class="sceand-tabel">
			 								<tr>
			 									<td class="td-radio">
			 										<input type="radio">
			 									</td>
			 									<td class="td-img-tr">
			 										<span class="td-img">
			 											<img src="img/product/printed-dress.jpg.png" alt="img">
			 										</span>		
			 									</td> 
			 					   				<td class="td-p-title">
			 					   					<a href="#"><p>Printed Chiffon Dress</p></a>
			 					   					<small>SKU :span</small>
			 					   					<small>Size : S, Color : Yellow</small>
			 					   				</td>    
			 									<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>£ 23.37</span>
				 					   				</div>			 							
			 									</td> 
			 								</tr>
			 							</tbody>
			 							<tbody class="trems">
			 								<tr>
			 									<td>
			 										<input type="checkbox">
			 									</td>
			 									<td colspan="3">
			 										<p>I agree to the terms and service and will adhere to them uncoditional. <a href="#">(read the terms of service)</a></p>
			 									</td>
			 								</tr>
			 							</tbody>
			 						</table>
			 						<div class="bootom-section">
			 							<ul>
			 								<li class="con-shopp"><a href="#" class="button">contenue shopping</a></li>
			 								<li class="pro-check"><a href="#" class="button last-li">proceed to checkout</a></li>
			 							</ul>
			 						</div>
			 					</div>
			 					<div role="tabpanel" class="tab-pane  table-responsive" id="payment">
			 						<table class="main-tabel table table-bordered">
			 							<thead class="fast-tabel">
			 								<tr>
			 									<th class="tr-pro">Product</th>
			 									<th class="tr-des">Description</th>
			 									<th class="tr-avail">Availability</th>
			 									<th class="tr-price">Unit price</th>
			 									<th class="tr-qty">Qty</th>
			 									<th class="tr-tras"> </th>
			 									<th class="tr-ammount">Total</th>
			 								</tr>
			 							</thead>
			 							<tfoot class="thard-tabel"> 
			 								<tr>
			 									<td colspan="2"></td>  
			 								  	<td colspan="3" class="totel big-totol">Total products (tax incl.)</td>
			 					   				<td colspan="2" class="totel"><span>£ 23.37</span></td> 	 	 
			 								</tr>
			 								<tr>
			 									<td colspan="2"></td>  
			 								  	<td colspan="3" class="totel mid-totol">Total products Shopping</td>
			 					   				<td colspan="2" class="totel"><span>Free Shopping</span></td> 	 	 
			 								</tr>
			 								<tr>
			 									<td colspan="2"></td>
			 									<td colspan="3" class="text totel big-totol">totel</td>
			 									<td colspan="2" class="totel big-totol">£ 23.37</td>
			 								</tr>
			 							</tfoot> 
			 							<tbody class="sceand-tabel">
			 								<tr>
			 									<td class="td-img-tr">
			 										<span class="td-img">
			 											<img src="img/product/printed-dress.jpg.png" alt="img">
			 										</span>		
			 									</td> 
			 					   				<td class="td-p-title">
			 					   					<a href="#"><p>Printed Chiffon Dress</p></a>
			 					   					<small>SKU :span</small>
			 					   					<small>Size : S, Color : Yellow</small>
			 					   				</td> 
			 									<td class="td-stok"><span>In stock</span></td>  
			 									<td class="td-unite">
				 					   				<ul>
				 					   					<li>£ 23.37</li>
				 					   					<li>-5%</li>
				 					   					<li>£ 24.60</li>
				 					   				</ul>			 										
			 									</td> 
			 									<td class="td-quentety">
													<input type="number" value="1">
				 					   				<div class="dec qtybutton">-</div> 
				 					   				<div class="inc qtybutton">+</div> 	 
			 									</td> 
			 									<td class="td-trash">
			 										<a href="#"><i class="fa fa-trash"></i></a>
			 									</td> 
			 									<td class="td-t-amount">
				 					   				<div class="total-amount">
				 					   					<span>£ 23.37</span>
				 					   				</div>			 							
			 									</td> 
			 								</tr>
			 							</tbody>
			 						</table>			 						
			 					</div>
			 				</div>  		 				
			 			</div>
			 		</div>
			 	</div>
			 </div>
		</div>

		<!-- Cut Page Medile Section Start End-->
		<!-- Footer Area Start-->
		<footer class="footer-area">
			<div class="footer-bg">   
				<div class="container">
					<div class="bg-bd">
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div class="cl-logo">
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-1.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-2.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-3.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-4.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-5.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-1.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-2.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-3.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-4.jpg" alt="" /></a>
									</div> 
									<div class="col-lg-12">
										<a href="#"><img src="img/client-lago/lago-5.jpg" alt="" /></a>
									</div> 
								</div>

							</div>
						</div>  
						<div class="footer-widget">
							<div class="row">
								<div class="col-lg-4 col-md-4">
									<div class="widget">
										<div class="footer-lago"><a href="#"><img src="img/logo.png" alt="logo.jpg" /></a></div>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veure dol dolore eu fugiat nulla pariatur.</p> 
										<ul class="social-link">
											<li><a href="#"  data-toggle="tooltip" title="facebook"><i class="fa fa-facebook"></i> 
											</a></li>
											<li><a href="#"  data-toggle="tooltip" title="twitter"><i class="fa fa-twitter"></i>
											
											</a></li>
											<li><a href="#"  data-toggle="tooltip" title="rss"><i class="fa fa-rss"></i>
											
											</a></li>
											<li><a href="#"  data-toggle="tooltip" title="youtube"><i class="fa fa-youtube"></i>
											
											</a></li>
											<li><a href="#"  data-toggle="tooltip" title="google-plus"><i class="fa fa-google-plus"></i>
											
											</a></li>
										</ul>  
									</div>
								</div>
								<div class="col-lg-2 col-md-2">
									<div class="widget">
										<h5>Information</h5>
										<ul class="im">
											<li><a href="#">Special</a></li>
											<li><a href="#">New products</a></li>
											<li><a href="#">Best sellers </a></li>
											<li><a href="#">Our stores </a></li>
											<li><a href="#">Contact us </a></li>
											<li><a href="#">Sitemap</a></li>
										</ul>
									</div>							
								</div>
								<div class="col-lg-2 col-md-2">
									<div class="widget">
										<h5><a href="#">My account</a></h5>
										<ul class="im">
											<li><a href="#">My orders</a></li>
											<li><a href="#">My credit slips</a></li>
											<li><a href="#">My addresses</a></li>
											<li><a href="#">My personal info</a></li>
										</ul>								
									</div>							
								</div>
								<div class="col-lg-4 col-md-4">
									<div class="widget">
										<h5>Contact us</h5>
										<address> 
											Address:<span class="color">My Company, 42 Avenue Des Champs Elysées 75000 Paris France</span><br>
											Call Us Now Toll Free: <span class="color"><a href="tel:0123-456-789">0123-456-789</a></span><br> 
											Email: <span class="color"><a href="mailto:www@website.com">www@website.com</a> </span> 
										</address>
									</div>							
								</div>
							</div>
						</div> 
					</div>
				</div>  
				<div class="container">
					<div class="copyright">
						<div class="row">
							<div class="col-lg-4 col-md-4 col-sm-6">
								<div class="copyright-text">
									<p><b>Copyright</b> &copy; <span class="color"><a href="#"> BootExperts.</a></span>All Rights Reserved</p>
								</div>
							</div>
							<div class="col-lg-8 col-md-8 col-sm-5">
								<div class="payment">
									<ul>
										<li><a href="#"><img src="img/payment.png" alt="" /></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>  
			</div>
		</footer>
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

