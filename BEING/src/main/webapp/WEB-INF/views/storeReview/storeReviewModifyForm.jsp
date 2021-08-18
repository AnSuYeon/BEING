<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>게시글 쓰기</title>

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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/store.css">
</head>

<body>
<%@ include file="../include/header.jspf" %>


<div class="box-title ">별점 평가</div>
<div class="storeModify-box">
<form action="modify.do" method="post">
<!-- 추가 -->
<input type="hidden" name="no" value="${modReq.num}">
<p>
   번호:<br/>${modReq.num}
</p>
<!-- <div class="store-write"><h1>상품의 리뷰를 남겨주세요</h1></div> -->

<div class="wrap">
<!--    <div class="wrap-title">
    <h1>후기</h1>
    </div> -->
         <input type="hidden" name="prodNum" id="rate" value="${modReq.prodNum}"/>
        <!-- <p class="title_star">별점</p> -->
 
        <div class="review_rating">
            
            
            <div class="rating">
                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                <input type="radio" name="grade" id="rating1" value="1" class="rate_radio" title="1점">
                <label for="rating1"></label>
                <input type="radio" name="grade" id="rating2" value="2" class="rate_radio" title="2점">
                <label for="rating2"></label>
                <input type="radio" name="grade" id="rating3" value="3" class="rate_radio" title="3점" >
                <label for="rating3"></label>
                <input type="radio" name="grade" id="rating4" value="4" class="rate_radio" title="4점">
                <label for="rating4"></label>
                <input type="radio" name="grade" id="rating5" value="5" class="rate_radio" title="5점">
                <label for="rating5"></label>
            </div>
        </div >
        
        <div class="review_contents">
            <div class="warning_msg"></div>
            <input type="text" class="review_textarea" name="content" 
            value="${modReq.content}" placeholder="리뷰를 5자 이상 작성해주세요."/>
        </div>   
        <div class="cmd">
<!--             <input type="button" name="save" id="save" value="등록"> -->
        </div>
</div>

<div class="store-review-submit">
 <button type="submit" class="btn" id="btn">평가 등록</button> 

</div>


</form>
</div>




<%@ include file="../include/footer.jspf" %>
<!-- 별점 기능 -->


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

<script src='${pageContext.request.contextPath}/resources/js/star.js'></script>


</body>



</html>