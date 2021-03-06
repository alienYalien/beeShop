<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
						<div class="right-featured">
							<div class="right-feature-head">
								<h3>商家推荐</h3>
							</div>
							<div class="row">
								<div class="new-product">								
									<div class="product-slide">
												<div class="col-lg-3 col-sm-4">
													<c:forEach begin="0" end="1" var="i">
													<c:set var="g" value="${scrollList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
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
														<a href="#"><span class="leval">推荐</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>	 
											</div>
											
											<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="2" end="3" var="i">
													<c:set var="g" value="${scrollList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
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
														<a href="#"><span class="leval">推荐</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>		
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="4" end="5" var="i">
													<c:set var="g" value="${scrollList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
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
														<a href="#"><span class="leval">推荐</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="6" end="7" var="i">
													<c:set var="g" value="${scrollList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
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
														<a href="#"><span class="leval">推荐</span></a>
													</div>  
													</c:if>
													</c:forEach>					
												</div>
												<div class="col-lg-3 col-md-4 col-sm-4">
													<c:forEach begin="8" end="9" var="i">
													<c:set var="g" value="${scrollList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product"> 
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb/goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}" />  
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
															<a href="#"><span class="leval">推荐</span></a>
														</div>
													</div>  
													</c:if>
													</c:forEach>					
												</div>						   
								</div> 
							</div>
						</div>
			