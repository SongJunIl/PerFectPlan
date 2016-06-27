<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   <c:forEach items="${list}" var="dto"> 
    <tr>
        <th scope="row" width="100%" height="100%"><a href="spotView?num=${dto.num}"><img src="${pageContext.request.contextPath}/resources/fileimg/${dto.spot_img}" width="100%" height="210px"></a></th>
        <td ><a href="spotView?num=${dto.num}">${dto.spot_name}</a>
        <p><img  src="${pageContext.request.contextPath}/resources/img/btn/postion.png">&nbsp;&nbsp;${dto.spot_address}</p>
        <p>${dto.contents}</p><br>
        <p><img src="${pageContext.request.contextPath}/resources/img/btn/clib.png"></p>
        </td>
    </tr>
 <tr>
    <th></th>
    <td></td>
    </tr>
    </c:forEach>
	
	