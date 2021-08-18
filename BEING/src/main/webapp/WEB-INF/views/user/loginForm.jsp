<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>로그인</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
   content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
   name="viewport">

<!-- Theme style -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/main.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap"
   rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
   <div class="login-box">
      <div class="login-logo">
         <a href="${pageContext.request.contextPath}/main/index.do"> <img
            src="${pageContext.request.contextPath}/resources/img/logo4.png"
            alt="" title="" width="75px" height="75px" /> Being House
         </a>
      </div>
      <!-- /.login-logo -->
      <div class="login-box-body">
         <p class="login-box-msg">
            <c:if test="${errors.idOrPwNotMatch}">
               아이디와 암호가 일치하지 않습니다.
            </c:if>
            <c:if test="${errors.id}">ID를 입력하세요.</c:if>
            <c:if test="${errors.password}">암호를 입력하세요.</c:if>
         </p>

         <form action="${pageContext.request.contextPath}/user/loginPost" method="post">
            <div class="form-group has-feedback">
               <input type="email" class="form-control" name="email" id="email"
                  placeholder="이메일"> <span
                  class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
               <input type="password" class="form-control" name="password"
                  id="password" placeholder="비밀번호"> <span
                  class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
               <div class="col-xs-8">
                  <div class="checkbox icheck">
                     <label> <input type="checkbox" name="useCookie">
                        Remember Me
                     </label>
                  </div>
               </div>
               <!-- /.col -->
               <div class="col-xs-4">
                  <button type="submit" class="btn btn-primary btn-block btn-flat"
                     id="btn1">로그인</button>
               </div>
               
               <c:if test="${userId eq null}">
					 <a href="https://kauth.kakao.com/oauth/authorize?client_id=d31e8bec18195625a37e0ff70e60e749&redirect_uri=http://localhost:8080/being/user/KaKaoLogin&response_type=code&prompt=login">			            
			            <img src="${pageContext.request.contextPath}/resources/img/kakao_login_large_narrow.png">
			        </a>
			    </c:if>
               <!-- /.col -->
            </div>
         </form>

         <!-- iCheck -->
<!--          <script src="/resources/plugins/iCheck/icheck.min.js" -->
<!--             type="text/javascript"></script> -->
         <script>
            $(function() {
               $('input').iCheck({
                  checkboxClass : 'icheckbox_square-blue',
                  radioClass : 'iradio_square-blue',
                  increaseArea : '20%' // optional
               });
            });
         </script>


         <div class="login-box-etc">
            <a href="#" class="pwd1">비밀번호 찾기</a><a href="joinForm">회원 가입</a>
         </div>

      </div>
      <!-- /.login-box-body -->
   </div>
   <!-- /.login-box -->

   <!-- jQuery 3 -->
   <!--    <script -->
   <%--       src="<%=request.getContextPath()%>/resources/bower_components/jquery/dist/jquery.min.js"></script> --%>
   <!--    <!-- Bootstrap 3.3.7 -->
   -->
   <!--    <script -->
   <%--       src="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script> --%>
   <!--    <!-- iCheck -->
   -->
   <!--    <script -->
   <%--       src="<%=request.getContextPath()%>/resources/plugins/iCheck/icheck.min.js"></script> --%>
   <!--    <script> -->
   <!--       $(function() { -->
   <!--          $('input').iCheck({ -->
   <!--             checkboxClass : 'icheckbox_square-blue', -->
   <!--             radioClass : 'iradio_square-blue', -->
   <!--             increaseArea : '20%' // optional -->
   <!--          }); -->
   <!--       }); -->
   <!--    </script> -->



   <!--    <script type="text/javascript">
      //<![CDATA[
      function login(id, pw) {
         if (id == "hanguk@naver.com") {
            if (pw == "1234") {
               alert(id+"님 방문을 환영합니다.");
               return true;
            } else {
               alert("잘못된 비밀번호입니다.");
            }
         } else {
            alert("존재하지 않는 아이디입니다.");
         }
         return false;
      }

      document.getElementById("btn1").onclick = function() {
         var user_id = document.getElementById("email").value;
         var user_pw = document.getElementById("password").value;
         var result = login(user_id, user_pw);
         if(!result) {
            return false;
         }
      }

      //]]>
   </script> -->




</body>
</html>