<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!-- Header Area-->	
        <header class="header-area">
        	<div class="container">
        		<div class="row">	
					<div class="col-lg-12">
						<div class="headet-top">						
							<div class="htop-one">
								<ul class="curency">
									<li>
										<a>用户中心<i class="fa fa-caret-down"></i></a>
										<ul>
											<li><a href="userCenter.jsp">我的账户</a></li> 
											<li><a href="${pageContext.request.contextPath }/myWeb/orderList">我的订单</a></li> 
											<li><a href="${pageContext.request.contextPath }/myWeb/carList">购物车</a></li> 
											<li><a href="register.jsp">注册</a></li> 
											<li><a href="login.jsp">登录</a></li> 
										</ul>
									</li> 
								</ul>
							</div>
							<div class="htop-one">
								<ul class="lenguage">
									<li>
										<a>语言<i class="fa fa-caret-down"></i></a>
										<ul>
											<li><a href="#">English</a></li> 
											<li><a href="#">中文</a></li> 
										</ul>										
									</li> 
								</ul>
							</div>
							<div class="htop-one last">
								<ul class="account">
									<li><a>网站<i class="fa fa-caret-down"></i></a>
										<ul>
											<li><a href="about.jsp">关于我们</a></li> 
											<li><a href="contact.jsp">联系我们</a></li>
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
								<a href="${pageContext.request.contextPath }/myWeb/home"><img src="img/logo.png" alt="lago" /></a>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="search">
								<form action="${pageContext.request.contextPath }/myWeb/goodsSearch">
									<input type="text" placeholder="请输入搜索内容" name="keyword">
									<input type="submit" value="搜索">
								</form>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"> 
							<ul class="curt">
								<li>
									<a class="total-cart-b" href="${pageContext.request.contextPath }/myWeb/carList">
										<span>${car.allAmount }</span>
										<p>Shopping Cart</p>
										<h6>￥ ${car.allPrice }</h6>									
									</a>
									<div class="curt-list">
										<ul>
											<c:forEach items="${car.carList }" var="c">   
											<li class="curt-list-li  <c:if test="${i==1}">border-li</c:if>"> 
												<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${c.id}"><img src="${pageContext.request.contextPath }${c.image1}" alt="${c.name}"></a>
												<a href="${pageContext.request.contextPath }/myWeb//goodsDetails?id=${c.id}"><span class="curt-list-item-color">${c.amount } X</span><p>${c.name }</p></a>
												<a><p>类别：${c.typename }</p></a>
												<h6>￥ ${c.price }</h6>
											</li>
										
											</c:forEach>
											<li><p class="totel">总价</p><h6>￥ ${car.allPrice }</h6></li>
										</ul>
										<button onclick = "window.location.href = '${pageContext.request.contextPath }/myWeb/carList'">前往结算</button>
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
								<li><a href="${pageContext.request.contextPath }/myWeb/home">首    页</a></li>
								<li class="mega-menu-one"><a href="${pageContext.request.contextPath }/myWeb/goodsList">全部商品</a></li>
								<li class="mega-menu-two"><a>商品类别</a> 	
									<ul class="dworpdown">
										<c:forEach items="${typeList }" var="t">
										<li><a  href="${pageContext.request.contextPath }/myWeb/goodsTypeList?typeid=${t.id}">${t.typename }</a></li>
										</c:forEach>			                                            
                					</ul>							
								</li>	
           					 	<c:choose><c:when test="${empty user }">
           						<li><a href="login.jsp">登录</a> 
								<li><a href="register.jsp">注册</a>	
								</c:when><c:otherwise>      	
         						<li><a href="${pageContext.request.contextPath }/myWeb/orderList">我的订单</a></li>
         						<li><a href="${pageContext.request.contextPath }/myWeb/carList">购物车</a> 
            					<li><a href="userCenter.jsp">我的账户</a></li>
           						<li><a href="${pageContext.request.contextPath }/myWeb/userLogout">退出</a></li>
								</c:otherwise></c:choose>
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
										<li><a href="${pageContext.request.contextPath }/myWeb/home">首    页</a></li>
										<li class="mega-menu-one"><a href="${pageContext.request.contextPath }/myWeb/goodsList">全部商品</a></li>
										<li class="mega-menu-two"><a>商品类别</a> 	
											<ul class="dworpdown">
												<c:forEach items="${typeList }" var="t">
													<li><a  href="${pageContext.request.contextPath }/myWeb/goodsTypeList?typeid=${t.id}&typename=${t.typename }">${t.typename }</a></li>
												</c:forEach>			                                            
                							</ul>							
										</li>	
										<li><a href="about.jsp">关于我们</a> 
										<li><a href="contact.jsp">联系我们</a>	
           					 			<c:choose><c:when test="${empty user }">
           										<li><a href="login.jsp">登陆</a> 
												<li><a href="register.jsp">注册</a>	
										</c:when><c:otherwise>      	
         									<li><a href="${pageContext.request.contextPath }/myWeb/orderList">我的订单</a></li>
         									<li><a href="${pageContext.request.contextPath }/myWeb/carList">购物车</a> 
            								<li><a href="userCenter.jsp">我的账户</a></li>
           									<li><a href="${pageContext.request.contextPath }/myWeb/userLogout">退出</a></li>
										</c:otherwise></c:choose>
									</ul>
								</nav>
							</div>					
						</div>
					</div>
				</div>	
			</div>
			<!-- mobile-menu-area end -->			
        </header>