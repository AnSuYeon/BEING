<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Being</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/linearicons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/storeModify.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">



</head>
<body>

   <%@ include file="../include/header.jspf" %>

<p class="box-title">상품 수정하기</p>

<div class="box">
<form role="form" method="post">
<!-- <div class="register-box"> -->
<!-- 		<div class="login-logo"> -->
<%--          <a href="${pageContext.request.contextPath}/main/index.do"> --%>
<%--             <img src="${pageContext.request.contextPath}/resources/img/logo4.png" alt="" title="" width="75px" height="75px"/> --%>
<!--          Being House -->
<!--          </a> -->
         
        
<!-- </div> -->
<div class="regist-box">

<div id="story-form-select">               
     <div id="story-category">
          <ul class="story-category">
          <li>카테고리</li>
        	  <li class="category-ct">
       		   	<select id="category" name="category">
       		   	<option value="${storeVO.category}">${storeVO.category}</option>
                         <option value="책장">책장</option>
                         <option value="의자">의자</option>
                         <option value="소파">소파</option>
                         <option value="거울">거울</option>
                         <option value="식탁">식탁</option>
                         <option value="수납용품">수납용품</option>
                         <option value="기타">기타</option>
					
				</select>
         	 </li>
          		<li>배송비</li>
               <li class="freeyn-ct">
                   <select name = "freeyn">
                   <option value="${storeVO.freeyn}">${storeVO.freeyn}</option>
                        <option value="Y">무료배송</option>
                        <option value="N">유료배송</option>
                        
                    </select>
                </li>
                
                
                
          </ul>
	</div> 
</div>
</div>

<div class="box-center">
<div class="all-content">
<div class="title">
<p>상품이름
	<input type="text" name="name" value="${storeVO.name}"placeholder="제목">
	<c:if test="${errors.title}"></c:if>
</p>
</div>

<div class="introduce">
<p>상세 내용
	<input type="text" name="introduce" value="${storeVO.introduce}">
</p>
</div>
 

<div class="price">
<p>가격
	<input type="text" name="price" value="${storeVO.price}">
</p>
</div>

<div class="dcprice">
<p>할인 가격
	<input type="text" name="dcprice" value="${storeVO.dcprice}">
</p>
</div>

<div class="brand">
<p>브랜드
	<input type="text" name="brand" value="${storeVO.brand}">
</p>
</div>

<div class="keywd">
<p>키워드
	<input type="text" name="keywd" value="${storeVO.keywd}">
</p>
</div>

<div class="thumbnail">
<p>썸네일
	<input type="text" name="thumbnail" value="${storeVO.thumbnail}">
</p>
</div>

<div class="infoimage">
<p>소개 이미지
	<input type="text" name="infoimage" value="${storeVO.infoimage}">
</p>
</div>

<div class="link">
<p>상품 링크
	<input type="text" name="link" value="${storeVO.link}">
</p>
</div>
</div>
</div>



<div>	
	 <button type="submit" class="btn" id="btn">수정하기</button> 
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
    
