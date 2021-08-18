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

<!-- <style>@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');</style> -->
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
	href="${pageContext.request.contextPath}/resources/css/list.css">
</head>

<body>
	<%@ include file="../include/header.jspf"%>

	<!-- 			<select name="searchType"> -->
	<!-- 				<option value="n" -->
	<%-- 					<c:out value="${cri.searchType == null?'selected':''}"/>> --%>
	<!-- 					---</option> -->
	<!-- 				<option value="t" -->
	<%-- 					<c:out value="${cri.searchType eq 't'?'selected':''}"/>> --%>
	<!-- 					Title</option> -->
	<!-- 				<option value="c" -->
	<%-- 					<c:out value="${cri.searchType eq 'c'?'selected':''}"/>> --%>
	<!-- 					Content</option> -->
	<!-- 				<option value="w" -->
	<%-- 					<c:out value="${cri.searchType eq 'w'?'selected':''}"/>> --%>
	<!-- 					Writer</option> -->
	<!-- 				<option value="tc" -->
	<%-- 					<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>> --%>
	<!-- 					Title OR Content</option> -->
	<!-- 				<option value="cw" -->
	<%-- 					<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>> --%>
	<!-- 					Content OR Writer</option> -->
	<!-- 				<option value="tcw" -->
	<%-- 					<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>> --%>
	<!-- 					Title OR Content OR Writer</option> -->
	<!-- 			</select> <input type="text" name='keyword' id="keywordInput" -->
	<%-- 				value='${cri.keyword }'> --%>
	<!-- 			<button style="cursor:pointer" onclick="searchBtn()">Search</button> -->
	<!-- 			<button style="cursor:pointer" onclick="newBtn()">New Board</button> -->

	<div class="search-board">
		<form action="listQuery" method="post">
			<div class="search-board">
				<select name="query">
					<option value="title">-제목-</option>
					<option value="contentof">-내용-</option>
					<option value="name">-작성자-</option>
				</select> <input type="text" name="content" size="30" placeholder="search">
				<button>
					<img class="serchicon"
						src="${pageContext.request.contextPath}/resources/img/searchicon.png"
						width="30px" height="30px">
				</button>
		</form>

		<c:if test="${login.lvl eq 1 || login.lvl eq 2}">
			<span class="storybtn"> <a class="btn"
				href="${pageContext.request.contextPath}/board/newArticleForm">스토리
					올리기</a>
			</span>
		</c:if>
	</div>

	<div class="category-box">
		<ul class="mob-menu-text">
			<p>
				<a href="${pageContext.request.contextPath}/board/listReadCount">인기순</a>
			</p>
			<img class="serchicon"
				src="${pageContext.request.contextPath}/resources/img/count.png"
				width="23px" height="23px" style="margin-left: 5px;">
		</ul>
		<ul class="mob-menu-text">
			<p>평수별집구경</p>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="acreage"> <input
						type="hidden" name="content" value="10평대"> <input
						class="inputtx" type="submit" value="10평대">
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="acreage"> <input
						type="hidden" name="content" value="20평대"> <input
						class="inputtx" type="submit" value="20평대">
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="acreage"> <input
						type="hidden" name="content" value="30평대"> <input
						class="inputtx" type="submit" value="30평대">
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="acreage"> <input
						type="hidden" name="content" value="40평대"> <input
						class="inputtx" type="submit" value="40평대">
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="acreage"> <input
						type="hidden" name="content" value="50평대 이상"> <input
						class="inputtx" type="submit" value="50평대 이상">
				</form>
			</li>
		</ul>
		<ul class="mob-menu-text">
			<p>공간별사진</p>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="space"> <input
						type="hidden" name="content" value="화장실"> <input
						class="inputtx" type="submit" value="화장실">
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="space"> <input
						type="hidden" name="content" value="거실"> <input
						class="inputtx" type="submit" value="거실">
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="space"> <input
						type="hidden" name="content" value="방"> <input
						class="inputtx" type="submit" value="방">
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="space"> <input
						type="hidden" name="content" value="베란다"> <input
						class="inputtx" type="submit" value="베란다">
				</form>
			</li>
		</ul>
	</div>

	</div>

	<div class="board-list">

		<c:if test="${articlePage.hasNoArticles()}">
			<tr>
				<td colspan="4">게시글이 없습니다.</td>
			</tr>
		</c:if>

		<c:forEach var="boardVO" items="${listArticle}">
			<div>
				<ul>
					<li><a
						href='${pageContext.request.contextPath}/board/readArticle?num=${boardVO.num}'>
							<img
							src="${pageContext.request.contextPath}/board/fileDownload?filename=${boardVO.fileName}&downname=${boardVO.fileRealName}"
							width="200px" height="200px" style="border-radius: 7px;">
							<p>
								<c:out value="${boardVO.title}" />
							</p> <span><p>${boardVO.name}</p>

								<p>조회수: ${boardVO.readcount}</p></span>
					</a></li>
				</ul>
			</div>
		</c:forEach>

		<table class="page">
			<%-- <c:if test="${articlePage.hasArticles()}"> --%>
			<tr>
				<td colspan="4"><c:if test="${pageMaker.prev}">
						<li><a
							href="listArticle${pageMaker.makeSearch(pageMaker.startPage - 1) }">[이전]</a></li>
					</c:if> <c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
							<a href="listArticle${pageMaker.makeSearch(idx)}">${idx}</a>
						</li>
					</c:forEach> <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a
							href="listArticle${pageMaker.makeSearch(pageMaker.endPage +1) }">[다음]</a>
					</c:if></td>
			</tr>
			<%-- </c:if> --%>
		</table>
	</div>


	<%@ include file="../include/footer.jspf"%>

	<!-- 검색 -->
	<script>

	// 처음
// $(document).on(
// function() {
// $('#searchBtn').on(
// "click",
// function(event) {
// self.location = "/board/listArticle"
// + 
// '${pageMaker.makeQuery(1)}'
// + "&searchType="
// + $("select 
// option:selected").val()
// + "&keyword=" + 
// $('#keywordInput').val();
// });

// });

	// 시도
// $(document).on("click", "#searchBtn", function() {
//     alert("두 번째 버튼을 클릭했습니다.");
// });
	
	// 시도
	function searchBtn() {

			self.location = "${pageContext.request.contextPath}/board/listArticle"
			+ 
			'${pageMaker.makeQuery(1)}'
			+ "&searchType="
			+ $("select 
			option:selected").val()
			+ "&keyword=" + 
			$('#keywordInput').val()
			+
			alert("test");

	
}

</script>

	<script>
function newBtn() {
// 	self.location = "${pageContext.request.contextPath}/board/newArticleForm";
	alert("test");
	
}
</script>

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