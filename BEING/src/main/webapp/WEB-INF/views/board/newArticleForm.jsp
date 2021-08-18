<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>새 글 등록</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/linearicons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">



</head>
<body>

   <%@ include file="../include/header.jspf" %>


<p class="box-title">스토리 등록하기</p>
<div class="box">
<form action="${pageContext.request.contextPath}/board/newArticleForm" method="post" enctype="multipart/form-data">

<input type="hidden" name="email" value="${login.email}">
<input type="hidden" name="name" value="${login.name}">

<div class="regist-box">
<div id="story-form-select">               
     <div id="story-category">
          <ul class="story-category1">
          <li>주거형태</li>
        	  <li class="type=ct">
       		   	<select id="type" name="type" size="1">
       		   	<option value="">-주거형태-</option>
                         <option value="원룸,오피스텔">원룸,오피스텔</option>
                         <option value="아파트">아파트</option>
                         <option value="빌라,연합">빌라,연합</option>
                         <option value="단독주택">단독주택</option>
                         <option value="사무공간">사무공간</option>
                         <option value="상업공간">상업공간</option>
                         <option value="기타">기타</option>
					
				</select>
         	 </li>
         	 
          <li>평수</li>
               <li class="acreage-ct">
                   <select name = "acreage">
                        <option value="">-평수-</option>
                        <option value="10평 미만">10평 미만</option>
                        <option value="10평대">10평대</option>
                        <option value="20평대">20평대</option>
                        <option value="30평대">30평대</option>
                        <option value="40평대">40평대</option>
                        <option value="50평대 이상">50평대 이상</option>
                    </select>
                </li>
             </ul>
                <ul class="story-category2">
                <li>예산</li>
                 <li class="budget-ct">
                   <select name = "budget">
                        <option value="">-예산-</option>
                        <option value="1백만원 미만">1백만원 미만</option>
                        <option value="1백만원대">1백만원대</option>
                        <option value="2백만원대">2백만원대</option>
                        <option value="3백만원대">3백만원대</option>
                        <option value="4백만원대">4백만원대</option>
                        <option value="5백만원 이상">5백만원 이상</option>
                    </select>
                </li>
                
                <li>분야</li>
                <li class="field-ct">
                    <select name="field">
                        <option value="">-분야-</option>
						<option value="리모델링">리모델링</option>
						<option value="홈스타일링">홈스타일링</option>
						<option value="부분 공사">부분 공사</option>
                     </select>
                </li>
                
                <li>공간별</li>
                <li class="space-ct">
                   <select name = "space">
                        <option value="">-공간별-</option>
                        <option value="화장실">화장실</option>
                        <option value="거실">거실</option>
                        <option value="방">방</option>
                        <option value="베란다">베란다</option>
                    </select>
                </li>
                
                
          </ul>
	</div>  
</div> 

<div class="all-content">
	<div class=title>
		<p>제목 <input type="text" name="title" value="${param.title}"placeholder="제목">
		<c:if test="${errors.title}"></c:if>
		</p>
	</div>
	<div class=content>
		<p>내용 <input type="text" name="contentOf"  value= "${param.contentOf}" placeholder="내용을 입력하세요">
		</p>
	</div>
</div>

</div>  
  <input type="file" name="uploadfile" multiple="" />
<div>	
	 <button type="submit" class="btn" id="btn">새 글 등록</button> 
</div>
</form>
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