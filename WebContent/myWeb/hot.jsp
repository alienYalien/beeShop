<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
						<div class="single-product-left">
							<div class="to-seal">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12">
										<!--  <div class="top-seal bg-bd">  -->
										<div class="bg-bd">
											<div class="tag-heading">
												<h3>热销商品</h3>
											</div>
											<!-- <h4 class="left-featured-head">热销商品</h4> -->									 
											<div class="all-seal-product">
												<div class="seal-product-slide">
													<c:forEach begin="0" end="7" var="i">
													<c:set var="g" value="${hotList[i]}" />
													<c:if test="${!empty g }"> 
													<div class="single-product">														
														<div class="product-image">
															 <a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><img src="${pageContext.request.contextPath }${g.cover}" alt="${g.name}"  /> </a> 										 
														</div> 
														<div class="price-box"> 
															<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}"><p>${g.name }</p></a>
															<div class="price">
																<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${g.id}">
																	<h5>￥ ${g.price }<span>￥ ${g.price }</span></h5>
																</a>
															</div> 
															<div class="rank">
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart"></i></a>
																<a href="#"><i class="fa fa-heart-o"></i></a>
															</div>											
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
							<div class="bg-bd">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12"> 
										<div class="tage-section"> 
											<div class="tag-heading">
												<h3>标签</h3>
											</div>
											<ul>
												<c:forEach items="${typeList }" var="t">
												<li><a  href="${pageContext.request.contextPath }/myWeb/goodsTypeList?typeid=${t.id}&typename=${t.typename }">${t.typename }</a></li>
												</c:forEach>
											</ul>
										</div> 
									</div>
								</div>
							</div>
							<div class="add">
							<a><img src="img/free_shipping.jpg" alt="" /></a>
						</div> 
						</div>
						