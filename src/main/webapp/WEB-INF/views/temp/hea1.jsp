<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style type="text/css">
   #header{
      height: 75px;
      width: 1440px;
   }
   #header_logo{
      width: 110px;
      height: 65px;
      float: left;
      margin-left:  150px;
   }
   #header_logo_img{
      width: 120px;
      height: 40px;
      padding-top: 18px;
   }
   #header_city{
      height: 25px;
      float: left;
      margin-left: 200px;
      text-align: center;
   }
   #header_plan{
      height: 25px;
      float: left;
      margin-left: 20px;
   }
   #header_use{
      height: 25px;;
      float: left;
      margin-left: 20px;
   }
   #header_notice{
      height: 25px;
      float: left;
      margin-left: 20px;
   }
   #header_member{
      width : 250px;
      height: 75px;
      float: left;
      margin-left: 120px;
   }
   #header_login{
      height: 26px;
      float: left;
   }
   #header_join{
      height: 26px;
      float: left;
   }
   .header_input{
      width: 120px;
      border: none;
      font-size: 14px;
      width: 115px;
      padding-top: 26Px;
      text-align: center; 
   }
   #header_member_img{
      width: 40px;
      height: 40px;
      float: left;
      img-size: 40px 40px;
   }
   #header_member_plan{
      width: 40px;
      height: 40px;
      float: left;
      margin-left: 40px;
   }
   #header_member_clip{
      width: 40px;
      height: 40px;
      float: left;
   }
   #header_member_more{
      width: 40px;
      height: 40px;
      float: left;
   }
   #header_member_logout{
      width: 40px;
      height: 40px;
      float: left;
   }
   #header_member_img1{
      width: 50px;
      height: 50px;
      margin-top: 13px;
   }
   .header_member_image{
      padding-top: 25px;
   }
</style>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
   
   $("#header_city").mouseover(function(){
      $("#header_city").text("여행지");
   });
   $("#header_city").mouseleave(function(){
      $("#header_city").text("TRAVEL SPOT");
   })
   $("#header_plan").mouseover(function(){
      $("#header_plan").text("여행 일정");
   });
   $("#header_plan").mouseleave(function(){
      $("#header_plan").text("SCHEDULE");
   })
   $("#header_use").mouseover(function(){
      $("#header_use").text("사용 방법");
   });
   $("#header_use").mouseleave(function(){
      $("#header_use").text("HOW TO USE");
   })
   $("#header_notice").mouseover(function(){
      $("#header_notice").text("공지사항");
   });
   $("#header_notice").mouseleave(function(){
      $("#header_notice").text("NOTICE");
   })
   $("#header_login").mouseover(function(){
      $("#header_login").text("로그인");
   });
   $("#header_login").mouseleave(function(){
      $("#header_login").text("LOGIN");
   })
   $("#header_join").mouseover(function(){
      $("#header_join").text("회원가입");
   });
   $("#header_join").mouseleave(function(){
      $("#header_join").text("JOIN");
   })
   
});


$(function() {
    $('#p_joinmodal').on('hidden.bs.modal', function (e) {
       backdrop: 'static'
       window.location.reload();   
       })
    
    $("#p_imgbtn").click(function() {
       var no = $("#no").val();
       $.ajax({
          type : "POST",
          url : "${pageContext.request.contextPath}/member/imgupload",
          data : {
             no : no,
          },
          success : function(data) {

          }
       });
    });

    $("#p_loginbt").click(function() {
       var i = $("#p_logform_id").val();
       var p = $("#p_logform_pw").val();
       $.ajax({
          type : "POST",
          url : "${pageContext.request.contextPath}/member/logincheck",
          data : {
             id : i,
             pw : p
          },
          success : function(data) {
             if (data.trim() == "no") {
                alert("회원 정보를 확인하세요.");
             } else {
                $("#p_logingo").submit();
             }
          }
       });
    });

    $("#p_email_send").click(function() {
       var t = $("#exampleInputEmail2").val();
       $.ajax({
          type : "POST",
          url : "${pageContext.request.contextPath}/member/emailck",
          data : {
             email : t
          },
          success : function(result) {
             $("#p_test").html(result);
          }
       });
    });

    $("#p_join_idcheck").change(function() {
       var i = $("#p_join_idcheck").val();
       $.ajax({
          type : "POST",
          url : "${pageContext.request.contextPath}/member/id",
          data : {
             id : i
          },
          success : function(data) {
             $("#p_idcheckresult").html(data);
          }
       });
    });

    $("#p_join_echeck").change(function() {
       var e = $("#p_join_echeck").val();
       $.ajax({
          type : "POST",
          url : "${pageContext.request.contextPath}/member/email",
          data : {
             email : e
          },
          success : function(data) {
             $("#p_emailcheckresult").html(data);
          }
       });
    });

    $("#p_joinbtn")
          .click(
                function() {

                   /* 공백 처리  */

                   var joinid = $('#p_join_idcheck').val();
                   var joinpw = $('#p_join_pwcheck').val();
                   var joinname = $('#p_join_namecheck').val();
                   var joinemail = $('#p_join_echeck').val();

                   if (joinid == '' || joinid == null) {
                      alert('ID를 입력하세요');
                      return;
                   }
                   if (joinpw == '' || joinpw == null) {
                      alert('pw를 입력하세요');
                      return;
                   }

                   if (joinname == '' || joinname == null) {
                      alert('name를 입력하세요');
                      return;
                   }
                   if (joinemail == '' || joinemail == null) {
                      alert('email를 입력하세요');
                      return;
                   }
                   /* 이메일테스트  */
                   var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
                   if (regex.test(joinemail) === false) {
                      alert("잘못된 이메일 형식입니다.");
                      return false;
                   }
                   //-->
                   /* 회원가입 처리 */
                   /* alert($("#p_idok").val());
                   alert($("#p_idnotok").val());
                   alert($("#p_echeckok").val());
                   alert($("#p_echecknotok").val());  */

                   if ($("#p_idok").val() == 2
                         && $("#p_echeckok").val() == 2) {
                      var keep = 1;
                      /* 회원가입 진행*/
                   } else {
                      var keep = 2;
                      /* 회원가입 오류  */
                   }

                   if (keep == 1) {
                      $
                            .ajax({
                               type : "POST",
                               url : "${pageContext.request.contextPath}/member/join",
                               data : {
                                  id : $("#p_join_idcheck").val(),
                                  pw : $("#p_join_pwcheck").val(),
                                  name : $("#p_join_namecheck")
                                        .val(),
                                  email : $("#p_join_echeck")
                                        .val()
                               },
                               success : function() {
                                  alert("회원가입 성공");
                                  window.location.reload();
                               }
                            })
                   } else {
                      alert("입력 한 정보를 확인하세요.");
                   }

                });
    
 
    
    
    

 });
</script>
</head>
<body>



<div id="header">
   <div id="header_logo"><img src="${pageContext.request.contextPath}/resources/img/perfectLOGO/logo.jpg" id="header_logo_img"></div>
   <div id="header_city" class="header_input">TRAVEL SPOT</div>
   <div id="header_plan"  class="header_input">SCHEDULE</div>
   <div id="header_use" class="header_input">HOW TO USE</div>
   <div id="header_notice" class="header_input">NOTICE</div>
   
   <div id="header_member">
   <c:if test="${ not empty member || not empty admin }">
      <div id="header_member_img"><img src="${pageContext.request.contextPath}/resources/img/login/male-user.png" id="header_member_img1"></div>
      <div id="header_member_plan"><img src="${pageContext.request.contextPath}/resources/img/login/plan.png" id="header_member_plan1" class="header_member_image"></div>
      <div id="header_member_clip"><img src="${pageContext.request.contextPath}/resources/img/login/clip.png" id="header_member_clip1" class="header_member_image"></div>
      <div id="header_member_more"><img src="${pageContext.request.contextPath}/resources/img/login/more.png" id="header_member_more1" class="header_member_image"></div>
      <div id="header_member_logout"><img src="${pageContext.request.contextPath}/resources/img/login/logout.png" id="header_member_logout1" class="header_member_image"></div>   
   </c:if>
   <c:if test="${empty member && empty admin}">
       <div id="header_login" class="header_input" data-target="#p_loginmodal"data-toggle="modal">LOGIN</div>
      <div id="header_join" class="header_input" data-target="#p_joinmodal"data-toggle="modal">JOIN</div> 
         
   </c:if>
   </div>
</div>


   <!-- id&pw 찾기 modal -->
   <div class="modal fade bs-example-modal-sm-idnpw" tabindex="-1"
      role="dialog" aria-labelledby="mySmallModalLabel">
      <div class="modal-dialog modal-sm">
         <div class="modal-content" id="p_modal_idnpw">
            <div id="p_email_form">

               <div class="form-group">
                  <label for="exampleInputName2">가입된 이메일로 id & pw 찾기</label>
               </div>
               <div class="form-group p_idnpw_margin">
                  <p id="p_idnpw_title">Email</p>
                  <input type="email" class="form-control" id="exampleInputEmail2"
                     name="email" placeholder="이메일을 입력하세요.">
                  <button type="button" class="btn btn-default p_idnpw_margin"
                     id="p_email_send">찾기</button>
               </div>
               <div id="p_test"></div>

            </div>
         </div>
      </div>
   </div>

   <!--join Modal -->
   <div class="modal fade" id="p_joinmodal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
         <div class="modal-content" id="p_join_md_1">
            <form id="p_joinform" method="post">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel">join</h4>
               </div>
               <div class="modal-body">
                  <div id="p_mdjoin_total">
                     <div class="input-group">
                        <span class="input-group-addon" id="p_join_addon1">ID</span> <input
                           type="text" class="form-control p_join_form"
                           id="p_join_idcheck" name="id" placeholder="아이디를 입력하세요."
                           aria-describedby="basic-addon1">
                     </div>
                     <div id="p_idcheckresult" class="p_j_check"></div>
                     <br>
                     <div class="input-group">
                        <span class="input-group-addon" id="p_join_addon2">PW</span> <input
                           type="password" class="form-control p_join_form"
                           id="p_join_pwcheck" name="pw" placeholder="비밀번호를 입력하세요."
                           aria-describedby="basic-addon1">
                        <div id="p_pwcheckresult"></div>
                     </div>
                     <br>
                     <div class="input-group">
                        <span class="input-group-addon" id="p_join_addon3">Name</span> <input
                           type="text" class="form-control p_join_form"
                           id="p_join_namecheck" name="name" placeholder="이름을 입력하세요."
                           aria-describedby="basic-addon1">
                     </div>
                     <br>
                     <div class="input-group">
                        <span class="input-group-addon" id="p_join_addon4">e-mail</span>
                        <input type="email" class="form-control p_join_form"
                           id="p_join_echeck" name="email" placeholder="이메일을 입력하세요."
                           aria-describedby="basic-addon1">
                     </div>
                     <div id="p_emailcheckresult"></div>
                  </div>
               </div>
               <div class="modal-footer" id="p_joinmd_footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary" id="p_joinbtn">Save</button>
                  <!-- onclick="go()" -->
               </div>
            </form>

         </div>
      </div>
   </div>


   <!-- img modal -->
   <div class="modal fade" id="p_imgmodal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
         <div class="modal-content" id="p_img_md_1">
            <form id="p_imgform"
               action="${pageContext.request.contextPath}/member/imgupload"
               method="post" enctype="multipart/form-data">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel">Image Upload</h4>
               </div>
               <div class="modal-body">
                  <div id="p_mdjoin_total">
                     <div class="input-group">
                        <span class="input-group-addon" id="p_join_addon1">IMG</span> <input
                           type="file" class="form-control" id="p_imgfile" name="file"
                           placeholder="파일을 찾으세요.">
                     </div>
                     <div id="p_idcheckresult" class="p_img_check"></div>
                     <br>
                     <div id="p_imgcheckresult">
                        <img
                           src="${pageContext.request.contextPath}/resources/memberimg/${member.m_img}"
                           style="width: 50px; height: 50px; border-radius: 50%; margin-left: 115px; margin-top: 30px;">
                     </div>
                     <input type="hidden" id="no" name="no" value="${member.no}">
                     <input type="hidden" id="id" name="id" value="${member.id}">
                     <input type="hidden" id="email" name="email" value="${member.email}">
                     <input type="hidden" id="name" name="name" value="${member.name}">
                  </div>
               </div>
               <div class="modal-footer" id="p_joinmd_footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary" id="p_imgbtn">Save</button>
                  <!-- onclick="go()" -->
               </div>
            </form>

         </div>
      </div>
   </div>
      <!--login Modal -->
   <div class="modal fade" id="p_loginmodal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title" id="myModalLabel">login</h4>
            </div>
            <div class="modal-body">

               <div id="modal_logform">
                  <form class="form-horizontal"
                     action="${pageContext.request.contextPath}/member/login"
                     method="post" id="p_logingo">
                     <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
                        <div class="col-sm-10-input">
                           <input type="text" class="form-control" name="id"
                              id="p_logform_id" placeholder="아이디를 입력하세요.">
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10-input">
                           <input type="password" class="form-control" name="pw"
                              id="p_logform_pw" placeholder="비밀번호를 입력하세요.">
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10"></div>
                     </div>
                     <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                           <button type="button" class="btn btn-default" id="p_loginbt">log
                              in</button>
                        </div>
                     </div>
                  </form>
               </div>

            </div>
            <div class="modal-footer" id="p_logmd_footer">
               <div id="p_md_footer">
                     <a data-toggle="modal" data-target=".bs-example-modal-sm-idnpw">아이디 & 비밀번호 찾기</a>
                  </div>
                  <div class="p_md_footer_1" id="p_md_f2">
                     <a data-toggle="modal" data-target="#p_joinmodal">회원 가입</a>
                  </div>
               </div>
            </div>
         </div>
      </div>

<!--      Latest compiled and minified CSS
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

Optional theme
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

Latest compiled and minified JavaScript
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

 -->

</body>
</html>