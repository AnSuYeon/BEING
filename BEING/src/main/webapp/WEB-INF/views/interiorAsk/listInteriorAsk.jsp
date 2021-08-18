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
	<title>시공 상담</title>
	
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->

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
</head>
<body>
<%@ include file="../include/header.jspf" %>
<div class="list-box">


<c:if test="${login.lvl eq 1 || login.lvl eq 2}">
	<p class="askbtn">
		<a class="btn" href="${pageContext.request.contextPath}/interiorAsk/newInteriorAskForm">인테리어 신청하기</a>
	</p>
</c:if>

<table class = "listbox">
	<tr>
	<th>제목</th>
	<th>업체 명</th>
	<th>신청자</th>
	<th>신청일자</th>
	<!-- <th>업체 답변</th> -->
</tr>
<c:if test="${interiorAskPage.hasNoInteriorAsk()}">
	<tr>
		<td colspan="4">신청 없습니다.</td>
	</tr>
</c:if>
<c:forEach var="interiorAskVO" items="${listInteriorAsk}">

	<tr>
		<td><!-- 신청 제목 -->
		<a href='${pageContext.request.contextPath}/interiorAsk/readInteriorAsk?num=${interiorAskVO.num}&page=${params.page}'>
		<c:out value="${interiorAskVO.title}"/>
		</a></td>
		<td>${interiorAskVO.cname}</td>
		<td>${interiorAskVO.name}</td>
		<td>${interiorAskVO.registday}</td>
		<%-- <td>${interiorAskVO.answer}</td> --%>
	</tr>
	</c:forEach>
</table>

<table class="listbtn">

	<tr>	
		<td colspan="4">
			<c:if test="${pageMaker.prev}">
								<li><a
									href="listInteriorAsk${pageMaker.makeSearch(pageMaker.startPage - 1) }">[이전]</a></li>
							</c:if>
			<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="listInteriorAsk${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="listInteriorAsk${pageMaker.makeSearch(pageMaker.endPage +1) }">[다음]</a>
			</c:if>
		</td>
	</tr>
</table>

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