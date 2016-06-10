<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<tr><th>IMAGE</th><th>CONTENTS</th></tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td width="200px" height="100%"><a href="spotView?num=${dto.num}"><img src="${pageContext.request.contextPath}/resources/fileimg/${dto.spot_img}" width="200px" height="150px"></a></td>
				<td>
					<a href="spotView?num=${dto.num}">${dto.spot_name}</a><br>
					<div><img  src="${pageContext.request.contextPath}/resources/img/btn/postion.png">&nbsp;&nbsp;${dto.spot_address} </div><br>
					<div>${dto.contents}</div>
					<span> <img src="${pageContext.request.contextPath}/resources/img/btn/clib.png"></span>
				</td>
			</tr>
		</c:forEach>
	