<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach items="${jimlist}" var="dto" varStatus="i"> 
                    <div class="scrap_form" id="scrap_form_bit"><div class="scrap_form_bit_body" ><img src="${pageContext.request.contextPath}/resources/fileimg/${dto.spot_img}" width="220px" height="140px" id=""></div><div class="scrap_form_bit_foot"><br>&nbsp;&nbsp;&nbsp; ${dto.spot_name}</div></div>     
         </c:forEach>