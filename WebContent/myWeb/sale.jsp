<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
					<div class="col-lg-3 col-md-3 col-sm-4"> 
						<div class="left-featured  bg-bd">
							<h4 class="left-featured-head">折扣商品</h4>  
							<div class="left-single-feature">  	 				
								<c:forEach begin="0" end="5" var="i">
								<c:set var="g" value="${saleList[i]}" />
								<c:if test="${!empty g }">
								<div class="single-product">
									<div class="product-image">
										 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" /></a>
										<div class="cart-box"> 
											<div class="product-text">
												<a href="#"><span class="heart"><i class="fa fa-heart"></i></span></a>
												<a href="${pageContext.request.contextPath }/myWeb/carAdd?goodsid=${g.id }"><p>加入购物车</p></a>
												<a href="#"><span class="retwseet"><i class="fa fa-retweet"></i></span></a> 
											</div>
											<div class="link">
												<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><i class="fa fa-search-plus"></i></a>
											</div> 
										</div>										 
									</div> 
									<div class="price-box">
										<a href="#"><div class="rank">
											<i class="fa fa-heart"></i>
											<i class="fa fa-heart"></i>
											<i class="fa fa-heart"></i>
											<i class="fa fa-heart"></i>
											<i class="fa fa-heart-o"></i>
										</div></a>
										<a href="#"><p>${g.name }</p></a>
										<div class="price">
											<a href=""><h5>￥ ${g.price }<span>￥ ${g.price*2 }</span></h5></a>
										</div>
										<span class="descount">5折</span> 
									</div>
									<a href="#"><span class="leval">折扣</span></a>
								</div> 
								</c:if>
								</c:forEach>			
							</div>	
						</div>
						<div class="add">
							<a><img src="img/free_shipping.jpg" alt="" /></a>
						</div>  
			</div>