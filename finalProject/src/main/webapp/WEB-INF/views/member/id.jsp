<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:choose>
	<c:when test="${not empty cant}">
	<!-- 중복이면 사용불가 1 -->
	<input type="hidden" id="p_idnotok" value="1">
	<span>${idcheck}</span>
	</c:when>
	<c:otherwise>
	<!-- 사용가능하면 2  -->
		<input type="hidden" id="p_idok" value="2">
	<span>${idcheck}</span>
	</c:otherwise>
</c:choose>


	
	








