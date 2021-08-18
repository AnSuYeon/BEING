<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/logo4.png">
<!-- Author Meta -->
<meta name="author" content="colorlib">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Being</title>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
			CSS
			============================================= -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/linearicons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin.css">
</head>

<body>

	<%@ include file="../include/header.jspf"%>

	<p class="title">< 회원 관리 ></p>

	<div class="table-start">
		<table class="table">
			<tr>
				<td>회원 별명</td>
				<td>회원 아이디</td>
				<td>가입일</td>
				<td>회원 레벨</td>
				<td>회원 레벨 수정</td>
			</tr>
			<c:if test="${memberPage.hasNoMember()}">
				<tr>
					<td colspan="4">업체가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="userVO" items="${listMember}">
				<tr>
					<!-- 		회원 별명 -->
					<td>${userVO.name}</td>
					<!-- 		회원 아이디 -->
					<td>${userVO.email}</td>
					<!-- 	작성일 -->
					<td><fmt:formatDate value="${userVO.registDay}"
							pattern="yyyy-MM-dd" /></td>
					<!-- 		회원 레벨 -->
					<td>${userVO.lvl}</td>
					<!-- 		상품평 수정 -->
					<td><a
						href='${pageContext.request.contextPath}/admin/modifyMemberLevelForm?email=${userVO.email}'>[회원
							레벨 수정]</a></td>
					<!-- 		삭제 -->
					<%-- 		<u:isAdmin> --%>
					<!-- 		<td>[삭제]</td> -->
					<%-- 		</u:isAdmin> --%>

				</tr>
			</c:forEach>
		</table>

		<table class="page">
			<%-- <c:if test="${articlePage.hasArticles()}"> --%>
			<tr>
				<td colspan="4"><c:if test="${pageMaker.prev}">
						<li><a
							href="index${pageMaker.makeSearch(pageMaker.startPage - 1) }">[이전]</a></li>
					</c:if> <c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
							<a href="index${pageMaker.makeSearch(idx)}">${idx}</a>
						</li>
					</c:forEach> <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a
							href="index${pageMaker.makeSearch(pageMaker.endPage +1) }">[다음]</a>
					</c:if></td>
			</tr>
			<%-- </c:if> --%>
		</table>
	</div>

	<p class="title">< 게시판 관리 ></p>

	<p class="story">
		<img class="img3"
			src="${pageContext.request.contextPath}/resources/img/admin_story.png"
			width="40px" height="40px" style="margin-right: 15px;"><a
			href="${pageContext.request.contextPath}/board/listArticle">스토리 관리하기</a>
	</p>

	<p class="store">
		<img class="img3"
			src="${pageContext.request.contextPath}/resources/img/admin_store.png"
			width="40px" height="40px" style="margin-right: 15px;"><a
			href="${pageContext.request.contextPath}/store/listStore">상품 관리하기</a>
	</p>

	<p class="interior">
		<img class="img3"
			src="${pageContext.request.contextPath}/resources/img/admin_interior.png"
			width="40px" height="40px" style="margin-right: 15px;"><a
			href="${pageContext.request.contextPath}/interior/listInterior">업체 관리하기</a>
	</p>
	<p class="interior">
		<img class="img3"
			src="${pageContext.request.contextPath}/resources/img/category/cat4.png"
			width="40px" height="40px" style="margin-right: 15px;"><a
			href="${pageContext.request.contextPath}/interiorAsk/listInteriorAsk">인테리어 신청 관리하기</a>
	</p>

	<%@ include file="../include/footer.jspf"%>

	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/hoverIntent.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/superfish.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.lightbox.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	<!-- 터치슬라이드 -->
	<script src='${pageContext.request.contextPath}/resources/js/swipe.js'></script>
	<script
		src='${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js'></script>

</body>

</html>