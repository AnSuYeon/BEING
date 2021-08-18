<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Being | Login </title>
<!-- <style>@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');</style> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/linearicons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css">

</head>

<body class="gray-bg">

	<c:if test="${result == 'fail'}">
	<script>
		alert("회원 가입이 필요합니다.");
	</script>
	</c:if>

	<c:if test="${result == 'success'}">
	<script>
		alert("계정이 활성화되었습니다. 로그인 후 서비스를 이용해 주십시오.");
	</script>
	</c:if>
		
<div class="loginColumns animated fadeInDown">
	    <div class="row">
	
	        <div class="col-md-6">
	            <h2 class="font-bold">Welcome to Being</h2>
	<br></br>
	            <p>
	                ...
	            </p>
	
	            <p>
	                               ... <br></br>
	                               ...
	            </p>
	
	            <p>
	                ...          
	            </p>
	
	            <p>
	                <small>.</small>
	            </p>
	
	        </div>
	        <div class="col-md-6">
	            <div class="ibox-content">
	                <form class="form-signin" role="form" action="${pageContext.request.contextPath}/user/loginPost" method="post">
	                
	                <div class="form-group ${error != null ? 'has-error' : ''}">
	                	<span>${message}</span>
	                    <input type="email" name="email" class="form-control" placeholder="Email" required="">
						<span>${error}</span>
	                </div>
	                <div class="form-group ${error != null ? 'has-error' : ''}">
	                	<!-- <span>${message}</span> -->
	                    <input type="password" name="password" class="form-control" placeholder="Password" required="">
	                    <span>${error}</span>
	                </div>
	                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>
	
	               
	
	                <p class="text-muted text-center">
	                    <small>Do not have an account?</small>
	                </p>
	                <a class="btn btn-sm btn-white btn-block" href="${pageContext.request.contextPath}/user/joinPost">Create an account</a>
	            </form>
	            <p class="m-t">
	                <small></small>
	            </p>
	        </div>
	    </div>
	</div>
	<hr/>            
    

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
