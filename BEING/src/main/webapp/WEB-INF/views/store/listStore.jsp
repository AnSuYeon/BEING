<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 목록</title>

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

		</header>
		
<div class="search-board">
	<div class="category-box">
		
		<ul class="mob-menu-text">
			<p># 카테고리</p>
			<%-- <input type="hidden" name="preContent" value="${ not empty preContent ? preContent : '' }"/>--%>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="category"/>
					<input type="hidden" name="content" value="책장"/>
					<input type="submit" class="inputtx" value="#책장"/>
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="category"/> 
					<input type="hidden" name="content" value="의자"/>
					<input type="submit" class="inputtx" value="#의자"/>
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="category"/> 
					<input type="hidden" name="content" value="소파"/>
					<input type="submit" class="inputtx" value="#소파"/>
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="category"/> 
					<input type="hidden" name="content" value="TV"/>
					<input type="submit" class="inputtx" value="#TV"/>
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="category"/> 
					<input type="hidden" name="content" value="테이블"/>
					<input type="submit" class="inputtx" value="#테이블"/>
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="category"/> 
					<input type="hidden" name="content" value="수납용품"/>
					<input type="submit" class="inputtx" value="#수납용품"/>
				</form>
			</li>
			<li>
				<form action="listQuery" method="post">
					<input type="hidden" name="query" value="category"/> 
					<input type="hidden" name="content" value="기타"/>
					<input type="submit" class="inputtx" value="#기타"/>
				</form>
			</li>
			
		</ul>
		<ul><c:if test="${login.lvl eq 1}">
			<span class="storybtn"> <a class="btn"
				href="${pageContext.request.contextPath}/store/newStoreForm">상품등록하기</a>
			</span>
		</c:if></ul>
	</div>
		
		

	</div>

	<div class="main-title">
		<h1>오늘의딜</h1>
	</div>
	<div id="bestbook_zone">
		<div id="best_bg">
			<ul>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today1.png"
						width="320px" height="320px" alt="" /> <span>[Special] 베란다
							유리창 창문 청소 도구! 자석창문닦이
							<p>
								45% <strong>9,500</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today2.png"
						width="320px" height="320px" alt="" /> <span>[Special] 여름의
							청량함을 담은 보에나 드 모네 시리즈 (2년 품질보증)
							<p>
								45% <strong>46,000 외</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today3.png"
						width="320px" height="320px" alt="" /> <span>[Special] 샤베트
							5COLOR 시어서커 선염 여름 차렵 침구세트(SS)(Q)
							<p>
								73% <strong>18,900</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today4.png"
						width="320px" height="320px" alt="" /> <span>[Special] 너무
							쉬운 집콕템 명화 그리기 -풍경&플라워
							<p>
								19% <strong>8,900 외</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today8.png"
						width="320px" height="320px" alt="" /> <span>안심 에어컨 분해청소
							(벽걸이/스탠드/천정형)
							<p>
								22% <strong>65,500</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today6.png"
						width="320px" height="320px" alt="" /> <span>[쿠폰할인] 30평대!
							무풍 에어컨 AF19T7974WZRS 전국기본설치비 포함
							<p>
								27% <strong>2,000,000</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today5.png"
						width="320px" height="320px" alt="" /> <span>라탄 수초 러그 거실
							카페트 5size
							<p>
								90% <strong>15,000</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today8.png"
						width="320px" height="320px" alt="" /> <span>[단독] 어라운드 원형
							테이블/식탁 1000size
							<p>
								60% <strong>99,000</strong>
							</p>
					</span></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/img/today9.png"
						width="320px" height="320px" alt="" /> <span>21년형 웨이브인버터
							스탠드에어컨 SPVW17DWEG 전국기본설치
							<p>
								27% <strong>969,000</strong>
							</p>
					</span></a></li>
				<li><a href="#"> <img
						src="${pageContext.request.contextPath}/resources/img/today10.png"
						width="320px" height="320px" alt="" /> <span>포스B25 셀프스탠딩
							헤드라이트 무선 청소기(물걸레키트 증정)
							<p>
								22% <strong>198,000</strong>
							</p>
					</span></a></li>

			</ul>
			<p class="prev_btn">
				<a href="#"> <img
					src="${pageContext.request.contextPath}/resources/img/bestbook_btn_left.png"
					width="40px" height="50px" alt="이전으로 이동" />
				</a>
			</p>
			<p class="next_btn">
				<a href="#"> <img
					src="${pageContext.request.contextPath}/resources/img/bestbook_btn_right.png"
					width="40px" height="50px" alt="다음으로 이동" />
				</a>
			</p>
		</div>
	</div>
	<!-- close of bestbook_zone -->



	<div class="store-h1">
		<h1>상품</h1>
	</div>






	<div class="store-list">


		<c:if test="${storePage.hasNoStores()}">

			<td colspan="4">상품이 없습니다.</td>

		</c:if>
		<c:forEach var="storeVO" items="${listStore}">

			<div>
				<ul>
					<li><a class="name-a-font"
						href="readStore?prodnum=${storeVO.prodnum}"> <!-- 	썸네일 --> <span
							class="store=thumbnali"> <img
								src="${pageContext.request.contextPath}/resources/img/store_sample.png"
								width="320px" height="320px" alt="" />
						</span> <!-- 		브랜드 -->

							<p class="brand-font">${storeVO.brand}</p> <!-- 		이름 -->
							<p class="name-font">
								<%-- <a class="name-a-font" href="read.do?no=${store.num}&pageNo=${storePage.currentPage}"> --%>
								<c:out value="${storeVO.name}" />
								<!-- </a> -->
							</p> <!-- 		할인가 -->
							<p class="dcprice-font">${storeVO.dcprice}</p> <!-- 		평점 -->
							<p class="avggrade-font">평점${storeVO.avggrade}</p> <!-- 		무료배송 -->

							<p class="freeyn-font">
								<c:if test="${storeVO.freeyn eq 'Y'}">
		무료배송
	</c:if>
								<c:if test="${storeVO.freeyn ne 'Y'}">
		유료배송
	</c:if>
							</p>
					</a></li>
				</ul>
			</div>


		</c:forEach>


		<table class="page">
			<%-- <c:if test="${storePage.hasStores()}"> --%>
			<tr>
				<td colspan="4"><c:if test="${pageMaker.prev}">
						<li><a
							href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">[이전]</a></li>
					</c:if> <%--          <c:if test="${storePage.startPage > 5}"> --%> <%--          <a href="list.do?pageNo=${storePage.startPage - 5}">[이전]</a> --%>
					<%--          </c:if> --%> <c:forEach
						begin="${pageMaker.startPage }" end="${pageMaker.endPage }"
						var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
							<a href="listStore${pageMaker.makeSearch(idx)}">${idx}</a>
						</li>
					</c:forEach> <%--          <c:forEach var="pNo"  --%> <%--                   begin="${storePage.startPage}"  --%>
					<%--                   end="${storePage.endPage}"> --%> <%--          <a href="list.do?pageNo=${pNo}">[${pNo}]</a> --%>
					<%--          </c:forEach> --%> <c:if
						test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a
							href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">[다음]</a></li>
					</c:if> <%--          <c:if test="${storePage.endPage < storePage.totalPages}"> --%>
					<%--          <a href="list.do?pageNo=${storePage.startPage + 5}">[다음]</a> --%>
					<%--          </c:if> --%></td>
			</tr>
			<%-- </c:if> --%>
		</table>
	</div>



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




















