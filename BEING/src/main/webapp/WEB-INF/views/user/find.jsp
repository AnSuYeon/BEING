<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<title>EGLEO</title>
<link rel="shortcut icon" href="/resources/images/ico/favicon.jpg">
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/template.css" />


</head>


	<section id="egleo-join">
		<div class="container">
			<div class="right"
				style='margin: 0 auto; float: none; width: 100%; max-width: 500px;'>
				<form class="form-signin" role="form" action="${pageContext.request.contextPath}/user/find" method="post">
					<label for="name">암호재설정 </label>
					<div>고객님의 가입 계정 이메일로 임시 암호를 보내 드립니다.</div>
	
					<div class="form-group ">
						<input type="email" name="email" class="form-control"
							placeholder="이메일 " autofocus="true">
					</div>
					   <button type="submit" class="btn btn-primary btn-block btn-flat" id="btn">인증 번호 보내기</button>


			</div>
		</div>
	</section>




	<!-- javascript -->
	<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>

</body>

</html>