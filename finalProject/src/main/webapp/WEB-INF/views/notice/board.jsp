<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#write").on('click', function() {
			location.href="board_WriteForm";
		});
	});
</script>
</head>
<body>

	<table border="1" width="800px" height="600px">
		<tr>
			<td>No</td><td>Title</td><td>Date</td><td>Writer</td>
		</tr>
		<c:forEach items="${notice_list}" var="i">
			<tr>
				<td>${i.num }</td>
				<td>
				<c:forEach begin="1" end="${i.depth }" step="1">
					&nbsp;&nbsp;&nbsp;
				</c:forEach>
				<a href="boardView?num=${i.num}">${i.title }</a></td>
				<td>${i.reg_date }</td>
				<td>${i.writer}</td>
			</tr>
		
		</c:forEach>
	</table>
	
	<c:if test="${page.curBlock>1 }">
		<a href="boardList?curPage=${page.startNum-1 }">[prev]</a>
	</c:if>
	<c:forEach begin="${page.startNum }" end="${page.lastNum }" step="1" var="i">
		<a href="boardList?curPage=${i}">${i }</a>
	</c:forEach>
	
	<c:if test="${page.curBlock < page.totalBlock }">
		<a href="boardList?curPage=${page.lastNum+1 }">[next]</a>
	</c:if>
	
	
		<c:if test="${not empty admin }">
		<input class="btn btn-warning" type="button" value="글쓰기" id="write">
		</c:if>
</body>
</html>



<!--QnA write Modal -->
<div class="modal fade" id="p_noticeWritemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" id="p_qna_md_2">
      <form action="${pageContext.request.contextPath}/member/qna_write" id="frm" method="post">
    <div class="modal-content" id="p_qna_md_3">
		     	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">질문 하기</h4>
     			</div>
     				<input type="hidden" name="id" value="${member.id}">
     				<input type="hidden" name="m_img" value="${member.m_img}">
					<input type="text" id="p_qna_mdtitle" name="title" placeholder="제목을 입력하세요.">
							<div class="modal-body">
					<textarea name="contents" id="SmartEditor" rows="10" cols="100" style="width: 568px; height: 170px;"></textarea>
							</div>
		      </div>
		      <div class="modal-footer" id="p_qna_footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" id="savebutton" class="btn btn-primary">Save</button>
		      </div>
		</form>
    
    </div>
  </div>







