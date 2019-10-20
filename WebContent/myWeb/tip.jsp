<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<div class="tip"> 
			<c:if test="${!empty msg }">
					<p name="terms" >${msg }fsdf</p>
			</c:if>
			<c:if test="${!empty failMsg }">
					<p name="terms" >${failMsg }fsdf </p>
			</c:if>    
			<div class="clear"></div>
</div>