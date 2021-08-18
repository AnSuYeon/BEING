<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원가입</title>
<!-- Tell the browser to be responsive to screen width -->

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<!-- <link rel="stylesheet" -->
<%-- 	href="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"> --%>
<!-- Font Awesome -->
<!-- <link rel="stylesheet" -->
<%-- 	href="<%=request.getContextPath()%>/resources/bower_components/font-awesome/css/font-awesome.min.css"> --%>
<!-- Ionicons -->
<!-- <link rel="stylesheet" -->
<%-- 	href="<%=request.getContextPath()%>/resources/bower_components/Ionicons/css/ionicons.min.css"> --%>
<!-- Theme style -->
<!-- <link rel="stylesheet" -->
<%-- 	href="<%=request.getContextPath()%>/resources/dist/css/AdminLTE.min.css"> --%>
<!-- iCheck -->
<!-- <link rel="stylesheet" -->
<%-- 	href="<%=request.getContextPath()%>/resources/plugins/iCheck/square/blue.css"> --%>
<!-- join -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/join.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">
</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="login-logo">
         <a href="${pageContext.request.contextPath}/main/index.do">
            <img src="${pageContext.request.contextPath}/resources/img/logo4.png" alt="" title="" width="75px" height="75px"/>
         Being House
         </a>
      </div>

		<div class="register-box-body">
			<p class="login-box-msg">
				<c:if test="${errors.id}">ID를 입력하세요.</c:if>
				<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>
				<c:if test="${errors.name}">이름을 입력하세요.</c:if>
				<c:if test="${errors.password}">암호를 입력하세요.</c:if>
				<c:if test="${errors.confirmPassword}">확인을 입력하세요.</c:if>
				<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
			</p>

			<!-- <form action="registerProcess.jsp" method="post"> -->
			<form action="${pageContext.request.contextPath}/user/joinPost" method="post">
				<div class="form-group has-feedback">
				<p> 이메일 </p>
					<input type="email" class="form-control" name="email"
						placeholder="이메일">
						<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<p> 비밀번호 </p>
						<input type="password" class="form-control" name="password" placeholder="비밀번호"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
				<p> 비밀번호 확인 </p>
					<input type="password" class="form-control" name="confirmPassword"
						placeholder="비밀번호 확인"> <span
						class="glyphicon glyphicon-log-in form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
				<p> 별명 </p>
					<input type="text" class="form-control" name="name"
						placeholder="별명"> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> I agree to the <a
								href="#">terms</a>
							</label>
						</div>
					</div>
					<!-- /.col -->
               <div class="col-xs-4">
                  <button type="submit" class="btn btn-primary btn-block btn-flat" id="btn">회원가입 완료</button>
               </div>
               <!-- /.col -->
            </div>
         </form>

         <div class="social-auth-links text-center">
            <p>이미 아이디가 있으신가요?</p>
            <a href="${pageContext.request.contextPath}/user/loginForm" class="text-center">로그인</a> 
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->


	<!-- jQuery 3 -->
<!-- 	<script -->
<%-- 		src="<%=request.getContextPath()%>/resources/bower_components/jquery/dist/jquery.min.js"></script> --%>
	<!-- Bootstrap 3.3.7 -->
<!-- 	<script -->
<%-- 		src="<%=request.getContextPath()%>/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script> --%>
	<!-- iCheck -->
<!-- 	<script -->
<%-- 		src="<%=request.getContextPath()%>/resources/plugins/iCheck/icheck.min.js"></script> --%>
<!-- 	<script> -->
<!-- // 		$(function() { -->
<!-- // 			$('input').iCheck({ -->
<!-- // 				checkboxClass : 'icheckbox_square-blue', -->
<!-- // 				radioClass : 'iradio_square-blue', -->
<!-- // 				increaseArea : '20%' // optional -->
<!-- // 			}); -->
<!-- // 		}); -->
<!-- 	</script> -->
</body>
</html>
