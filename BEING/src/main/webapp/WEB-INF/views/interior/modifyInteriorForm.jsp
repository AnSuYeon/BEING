<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>업체 관리</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/linearicons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/interior.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">



</head>
<body>

   <%@ include file="../include/header.jspf" %>

<%-- <p class="box-title">업체 수정하기</p>

<div class="box">
<form role="form" method="post">

<input type="hidden" name="num" value="${interiorVO.num}">

<div class="all-content">
<div class =title>
	<p>업체명
		<input type="text" name="cname" value="${interiorVO.cname}">
		<c:if test="${interiorVO.cname}">업체명을 입력하세요.</c:if>
	</p>
</div>
<div class=introduce>
	<p>업체소개
		<input type="text" name="introduce" value="${interiorVO.introduce}">
	</p>
</div>
<div class=imageA>
	<p>이미지
		<input type="text" name="imagea" value="${interiorVO.imagea}">
	</p>
</div>
<div class=imageB>
	<p>이미지
		<input type="text" name="imageb" value="${interiorVO.imageb}">
	</p>
</div>
</div>
<div>	
	 <button type="submit" class="btn" id="btn">업체 수정</button> 
</div>
</form>
</div>
 --%>

<p class="box-title">업체 등록하기</p>

<div class="box">
<form action="${pageContext.request.contextPath}/interior/newInteriorForm" method="post" enctype="multipart/form-data">


<div class="all-content">
<div class =title>
	<p>업체명
		<input type="text" name="cname" value="${interiorVO.cname}">
		<c:if test="${errors.cname}">업체명을 입력하세요.</c:if>
	</p>
</div>
<div class=introduce>
	<p>업체 소개
		<input type="text" name="introduce" rows="5" cols="30" value="${interiorVO.introduce}" >
	</p>
</div>
<div >
     <c:forEach var="listview" items="${listview}" varStatus="status">
			     <span >
					<img src ="${pageContext.request.contextPath}/board/fileDownload?filename=${listview.filename}&downname=${listview.realname}" width="200px" height="200px" style="border-radius: 7px;"> 							 
			     	<a href="${pageContext.request.contextPath}/board/fileDownload?filename=${listview.filename}&downname=${listview.realname}"> 							 
				 		${listview.filename}</a> ${listview.size2String()}
			    </span>
		</c:forEach>
	</div>
<div>
	<input type="file" name="uploadfile" multiple="" />
</div>

<div>	
	 <button type="submit" class="btn" id="btn">업체 수정</button> 
</div>

</form>
</div>











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