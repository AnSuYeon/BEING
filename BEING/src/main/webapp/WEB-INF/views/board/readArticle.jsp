<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/logo4.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>게시물 읽기</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->

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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/read.css">
</head>

<body>
	 <%@ include file="../include/header.jspf" %>
	
	
	
	   <!-- readArticle-->
	   <!--  썸네일 -->
<!-- <div class="everything"> -->
<%-- 	    <c:forEach var="listview" items="${listview}" varStatus="status"> --%>
<!-- <a href="#"> -->
<%-- <img src ="${pageContext.request.contextPath}/board/fileDownload?filename=${boardVO.fileName}&downname=${boardVO.fileRealName}">  --%>
<%-- 	</c:forEach> --%>
<!-- </div> -->
	   </div>
			
			<form role="form" method="post">	

						<input type="hidden" name="num" value="${boardVO.num}">
			</form>
			
	<div class="everthing2">
	<!-- 제목 -->
	<h1 class="title"><c:out value='${boardVO.title}' /></h1>
	
	<!-- 작성자 -->
	<h3 class="writer">${boardVO.name}</h3>


<div id="content">
		<div class="category">
			<div class="category-center">
			<li><img class="img1"
				src="${pageContext.request.contextPath}/resources/img/house.png"
				width="30px" height="30px" style="border-radius: 7px;"></li>
				<!-- <div class="category-name">주거형태</div> -->
				<li>주거형태</li>
			<div class="value">
				<u:pre value='${boardVO.type}' />
			</div>

			
				<li><img class="img2"
					src="${pageContext.request.contextPath}/resources/img/area.png"
					width="30px" height="30px" style="border-radius: 7px;"></li>
					<!-- <div class="category-name">평수</div> -->
					<li>평수</li>
				<div class="value">
					<u:pre value='${boardVO.acreage}' />
				</div>


				<li><img class="img3"
					src="${pageContext.request.contextPath}/resources/img/budget.png"
					width="30px" height="30px" style="border-radius: 7px;"></li>
					<!-- <div class="category-name">예산</div> -->
					<li>예산</li>
				<div class="value">
					<u:pre value='${boardVO.budget}' />
				</div>
				

				<li><img class="img4"
					src="${pageContext.request.contextPath}/resources/img/noticeboard.png"
					width="30px" height="30px" style="border-radius: 7px;"></li>
					<!-- <div class="category-name">분야</div> -->
					<li>분야</li>
				<div class="value">
					<u:pre value='${boardVO.field}' />
				</div>
				

				<li><img class="img5"
					src="${pageContext.request.contextPath}/resources/img/room.png"
					width="30px" height="30px" style="border-radius: 7px;"></li>
					<!-- <div class="category-name">공간별</div> -->
					<li>공간별</li>
				<div class="value">
					<u:pre value='${boardVO.space}' />
					</div>
				</div>
			</div>

</div>
			<div class="img-content">
			     <c:forEach var="listview" items="${listview}" varStatus="status">
					     <span >
							<img src ="${pageContext.request.contextPath}/board/fileDownload?filename=${listview.filename}&downname=${listview.realname}" width="500px" height="500px" style="border-radius: 7px;"> 							 
					     	<%-- <a href="${pageContext.request.contextPath}/board/fileDownload?filename=${listview.filename}&downname=${listview.realname}"> ${listview.filename}</a> ${listview.size2String()} --%>
					    </span>
				</c:forEach>
			</div>
		<!-- 내용 -->
			<h1 class="content">
				<u:pre value='${boardVO.contentOf}' />
			</h1>


			<!-- 목록 -->
			<div class="list">
				<td colspan="2"><c:set var="pageNo"
						value="${empty param.pageNo ? '1' : param.pageNo}" />
						<a class="btn" href="${pageContext.request.contextPath}/board/listArticle">목록</a>
					<c:if test="${login.lvl eq 1}">
						<a class="btn" href="${pageContext.request.contextPath}/board/remove?num=${boardVO.num}">게시글 삭제</a>
					</c:if>
					<c:if test="${login.email eq boardVO.email}">
						<a class="btn" href="${pageContext.request.contextPath}/board/modifyForm?num=${boardVO.num}">게시글 수정</a>
						<a class="btn" href="${pageContext.request.contextPath}/board/remove?num=${boardVO.num}">게시글 삭제</a>
					</c:if></td>
			</div>
		
			
			
</div>
	



		<%@ include file="../include/footer.jspf" %>

	<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="${pageContext.request.contextPath}/resources/js/easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/hoverIntent.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/superfish.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.lightbox.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	
<!-- 터치슬라이드 -->
<script src='${pageContext.request.contextPath}/resources/js/swipe.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js'></script>
	
</body>

</html>