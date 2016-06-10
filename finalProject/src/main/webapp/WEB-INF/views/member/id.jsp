<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:choose>
	<c:when test="${not empty mem }">
	<input type="hidden" class="p_check" value="keep">
	<span>${idcheck}</span>
	</c:when>
	<c:otherwise>
		<input type="hidden" class="p_check" value="stop">
	<span>${idcheck}</span>
	</c:otherwise>


</c:choose>
	
	








