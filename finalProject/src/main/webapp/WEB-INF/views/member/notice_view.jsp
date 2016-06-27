<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">모집 글 보기</h4>
</div>
<div id="tableviewDiv">
	<table id="tableviewer">
		<tr>
			<td id="viewtitle1">제목 :</td>
			<td>${view.title }</td>
		</tr>
	</table>
</div>
<br>
<div id="mozipViewtableDiv">
	<table class="table table-bordered">
		<tr>
			<td class="viewtd1">작성자</td>
			<td>${view.writer}</td>
			<td class="viewtd1">날짜</td>
			<td>${view.reg_date}</td>
			<td class="viewtd1">조회수</td>
			<td>${view.counts}</td>
		</tr>
	</table>
</div>
<hr>
<div class="modal-body" id="viewbodybo">${view.contents }</div>
<div class="modal-footer" id="mozipreplyfoot">
	
		<c:if test="${member != null }" >
		<c:if test="${member.id eq view.writer}" >
					<!-- // 로그인 아이디 == 작성자 -->
				<a href="./mozipDelete.bo?num=${view.num}"><button type="button"
				class="btn btn-danger mozipupdate1" id="savebutton">글 삭제</button></a> 
				<a href="./mozipView.bo?num=${view.num}"><button type="button"
				class="btn btn-primary" id="savebutton1">글 수정</button></a>
		</c:if>
		</c:if>
</div>