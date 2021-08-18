<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
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
	<title>상품</title>

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

<input type='hidden' name='prodnum' value="${storeVO.prodnum}">
	<div class="store">
	<div class="category2">
   카테고리>
   <u:pre value='${storeVO.category}'/>
   </div>
   
   
	<div class="flex-store">
	<div class="thumnail">
 
   <a href="#"><img src="${pageContext.request.contextPath}/resources/img/store_sample.png" width="400px" height="400px" style="border-radius: 7px;"></a>
	
  <%--   상품사진<u:pre value='${storeData.store.thumbnail}'/> --%>
   </div>
   
   <div class="right-store">
   <div class="brand">
   <!-- 브랜드 -->
   <u:pre value='${storeVO.brand}'/>
	</div>
	
	<div class="name">
	<!-- 상품이름 -->
	<u:pre value='${storeVO.name}'/>
	</div>
	
	<div class="price">
   <!-- 상품가격 -->
   <p style="text-decoration:line-throuth">${storeVO.price} 원</p>
   
   <%-- <u:pre value='${storeVO.price}'/> --%>
	</div>
	
	<div class="dcprice">
   <!-- 할인가격 -->
   <u:pre value='${storeVO.dcprice}'/>
   </div>
	
	<div class="freeyn">
	무료배송여부: 
   <u:pre value='${storeVO.freeyn}'/>
   </div>
  
	
	<div class="avggrade">
   평균평점:
   <u:pre value='${storeVO.avggrade}'/>
	</div>
	</div>
	</div>
	
	<div class="board-store">
	</div>
	
	
	<div class="down-store">
	<div class="introduce">
  <!--  상품소개 -->
   <u:pre value='${storeVO.introduce}'/>
   </div>
   
   <div class="infoimage">
   <!-- 소개사진 -->
   <img src="${pageContext.request.contextPath}/resources/img/imga.png" width="320px" height="320px" alt="" />
   <u:pre value='${storeVO.infoimage}'/>
   </div>
	
	<div class="link">
   판매사이트링크
   <p><a href = "${storeVO.link}">${storeVO.link}</a></p>
   <%-- <u:pre value='${storeVO.link}'/> --%>
   </div>
   </div>
	
	
<div class="list">
	 <td colspan="2">
		<c:set var="pageNo" value="${empty param.pageNo ? '1' : param.pageNo}" />
		<a class="btn" href="listStore?pageNo=${pageNo}">목록</a>
		
		<a class="btn" href="${pageContext.request.contextPath}/storeReview/write.do?no=${storeVO.prodnum}">상품평 등록</a>
		
<%-- 		<u:isAdmin> --%>
		<c:if test="${login.lvl eq 1}">
		<a class="btn" href="storeModifyForm?prodnum=${storeVO.prodnum}">상품 수정</a>
		<a class="btn" href="removePage?prodnum=${storeVO.prodnum}">상품 삭제</a>
		</c:if>
<%-- 		</u:isAdmin> --%>
	</td>
	</div>
</div>

<div class="store-review-border">
</div>

<div class="store-review-title">
	<h2>리뷰</h2>
		<div class="avggrade">
  			 평균평점:
  					 ${storeVO.avggrade}
  		 </div>
</div>

<div class="store-review">

<c:forEach var="storeData" items="${storeData.storeReview}">
	<div class="store-review-area">
		<div class="name-content">
			<div class="name">		
<!-- 	작성자 -->
				<strong>${storeData.writer.name}</strong>
			</div>
		
			<div class="content">	
<!-- 			내용 -->
				${storeData.content}
			</div>
		</div>	
	
	<div class="grade">	
<!-- 		평점 -->
		<strong>평점</strong> ${storeData.grade}
	</div>	
	
	<div class="regDate">
<!-- 		작성일 -->
		${storeData.regDate}
	</div>
	
	<div class="delete">
<!-- 		상품평 수정 -->
		<td><a href="${pageContext.request.contextPath}/storeReview/modify.do?no=${storeData.num}">수정</a></td>
<!-- 		삭제 -->
		<div class="delete1">
<%-- 		<u:isAdmin> --%>
		<c:if test="${login.lvl eq 1}">
		<td>삭제</td>
		</c:if>
<%-- 		</u:isAdmin> --%>
		</div>
	</div>
	
</div>
</c:forEach>
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

</body>
</html>