<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="u" tagdir="../tags" %> --%>
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
	<title>Being</title>

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
</head>

<body>

	<%@ include file="include/header.jspf" %>
	
	   <!--######## start banner Area ########-->
   <div id = "home-banner-test">
      <ul> 
      <a href="#" class="story-title">예산700!합리적인<br> 부분 공사로 꾸민 19년 된 아파트</a>
      <li>
      </li>
      <li>
      <a href="#" class="primary-btn header-btn text-capitalize mt-10">보러가기</a>
      </li>
      </ul>
      <!-- 배너 스와이프 -->
         <div id="visual">
         <div id="mySwipe" class='swipe'>
            <ul class="touch_banner swipe-wrap">
               <!-- 배너 목록 -->
               <li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/ad1.png" width="300px" height="600px" style="border-radius: 7px;"></a></li>
               <li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/ad2.png" width="300px" height="600px" style="border-radius: 7px;"></a></li>
               <li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/ad3.png" width="300px" height="600px" style="border-radius: 7px;"></a></li>
            </ul>
         </div>
         <ul class="touch_bullet">
            <!-- 배너 위치 표시 -->
            <li><img src="${pageContext.request.contextPath}/resources/img/visual_bullet_on.png" width="15px" height="15px" class="active"
               alt="" /></li>
            <li><img src="${pageContext.request.contextPath}/resources/img/visual_bullet_off.png" width="15px" height="15px" alt="" /></li>
            <li><img src="${pageContext.request.contextPath}/resources/img/visual_bullet_off.png" width="15px" height="15px" alt="" /></li>
         </ul>
         <p class="touch_left_btn">
            <!-- 이전 버튼 -->
            <a href="#"> <img src="${pageContext.request.contextPath}/resources/img/visual_btn_left2.png" width="40px" height="40px" alt="이전 배너" />
            </a>
         </p>
         <p class="touch_right_btn">
            <!-- 다음 버튼 -->
            <a href="#"> <img src="${pageContext.request.contextPath}/resources/img/visual_btn_right3.png" width="40px" height="40px" alt="다음 배너" />
            </a>
         </p>
      </div>
      
   </div>
   

   <!--######## End banner Area ########-->
   
   <!-- ########## 카테고리 이미지 ########## -->
   <div>
   <div class= "category_img">
         <div><img src="${pageContext.request.contextPath}/resources/img/category/cat1.png" class="img1">
            <div class="category_text">
               <h4>
                  <a href="${pageContext.request.contextPath}/store/listStore">쇼핑하기</a>
               </h4>
         </div></div>
         <div><img src="${pageContext.request.contextPath}/resources/img/category/cat2.png" class="img2">
         <div class="category_text">
               <h4>
                  <a href="${pageContext.request.contextPath}/board/listArticle">평수별</a>
               </h4>
         </div></div>
         <div><img src="${pageContext.request.contextPath}/resources/img/category/cat3.png" class="img3">
         <div class="category_text">
               <h4>
                  <a href="${pageContext.request.contextPath}/board/listArticle">공간별</a>
               </h4>
         </div></div>
         <div><img src="${pageContext.request.contextPath}/resources/img/category/cat4.png" class="img4">
         <div class="category_text">
               <h4>
                  <a href="${pageContext.request.contextPath}/interior/listInterior">시공업체</a>
               </h4>
         </div></div>
         <div><img src="${pageContext.request.contextPath}/resources/img/category/cat5.png" class="img5">
         <div class="category_text">
               <h4>
                  <a href="${pageContext.request.contextPath}/interiorAsk/newInteriorAskForm">빠른시공상담</a>
               </h4>
         </div></div>
         <div><img src="${pageContext.request.contextPath}/resources/img/category/cat6.png" class="img6">
         <div class="category_text">
               <h4>
                  <a href="${pageContext.request.contextPath}/faq/listFaq">질문과답변</a>
               </h4>
         </div></div>
   </div>
   </div>

<!--######## Start Latest News Area ########-->
    <section class="latest-news-area section-gap">
         <div class="row justify-content-center">
            <div class="col-lg-12">
               <div class="main-title">
                  <h1>오늘의 스토리</h1>
                  
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-4 col-md-6">
               <div class="single-news card">
                  <img class="card-top-img" src="${pageContext.request.contextPath}/resources/img/news/c1.jpg" width="450px" height="240px" alt="Card image cap">
                  <div class="card-body">
                     <h4 class="card-title">
                        <a href="#">
                           색감톡톡! 기분 좋은 긴장감을 주는 작업실 
                        </a>
                     </h4>
                     <p class="card-text">강한작가</p>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-6">
               <div class="single-news card">
                  <img class="card-top-img" src="${pageContext.request.contextPath}/resources/img/news/c2.jpg" width="450px" height="240px" alt="Card image cap">
                  <div class="card-body">
                     <h4 class="card-title">
                        <a href="#">
                           정리를 잘못했던 신혼집,홈스타일링 후 쉬워졌어요~
                        </a>
                     </h4>
                     <p class="card-text">kate 홈스타일링</p>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-6">
               <div class="single-news card">
                  <img class="card-top-img" src="${pageContext.request.contextPath}/resources/img/news/c3.jpg" width="450px" height="240px"  alt="Card image cap">
                  <div class="card-body">
                     <h4 class="card-title">
                        <a href="#">
                           16번의 미팅끝에 원하는 대로 변신!
                        </a>
                     </h4>
                     <p class="card-text">jiwooyai</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--######## End Latest News Area ########-->

	<!--######## Start Recent Completed Project Area ########-->
	<section class="recent-completed-project section-gap">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="main-title">
						<h1>오늘의딜</h1>
					</div>
				</div>
			</div> -->

			<div id="bestbook_zone">
   				<div id="best_bg">
      				<ul>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today1.png" width="320px" height="320px" alt="" />
        				<span>[Special] 베란다 유리창 창문 청소 도구! 자석창문닦이<p>45% <strong>9,500</strong></p></span></a>
              			</li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today2.png" width="320px" height="320px" alt="" />
              				<span>[Special] 여름의 청량함을 담은 보에나 드 모네 시리즈 (2년 품질보증)<p>45% <strong>46,000 외</strong></p></span></a>
              			</li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today3.png" width="320px" height="320px" alt="" />
              				<span>[Special] 샤베트 5COLOR 시어서커 선염 여름 차렵 침구세트(SS)(Q)<p>73% <strong>18,900</strong></p></span></a>
              			</li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today4.png" width="320px" height="320px" alt="" />
              				 <span>[Special] 너무 쉬운 집콕템 명화 그리기 -풍경&플라워<p>19% <strong>8,900 외</strong></p></span></a>
                       </li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today8.png" width="320px" height="320px" alt="" />
              				 <span>안심 에어컨 분해청소 (벽걸이/스탠드/천정형)<p>22% <strong>65,500</strong></p></span></a>
                       </li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today6.png" width="320px" height="320px" alt="" />
              				<span>[쿠폰할인] 30평대! 무풍 에어컨 AF19T7974WZRS 전국기본설치비 포함<p>27% <strong>2,000,000</strong></p></span></a>
                       </li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today5.png" width="320px" height="320px" alt="" />
              				<span>라탄 수초 러그 거실 카페트 5size<p>90% <strong>15,000</strong></p></span></a>
                       </li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today8.png" width="320px" height="320px" alt="" />
              				<span>[단독] 어라운드 원형 테이블/식탁 1000size<p>60% <strong>99,000</strong></p></span></a>
                       </li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/today9.png" width="320px" height="320px" alt="" />
              				<span>21년형 웨이브인버터 스탠드에어컨 SPVW17DWEG 전국기본설치<p>27% <strong>969,000</strong></p></span></a>
                       </li>
       	 				<li><a href="#">
             				<img src="${pageContext.request.contextPath}/resources/img/today10.png" width="320px" height="320px" alt="" />
             				<span>포스B25 셀프스탠딩 헤드라이트 무선 청소기(물걸레키트 증정)<p>22% <strong>198,000</strong></p></span></a>
                       </li>

      				</ul>
      				<p class="prev_btn">
         				<a href="#">
         				<img src="${pageContext.request.contextPath}/resources/img/bestbook_btn_left.png" width="40px" height="50px" alt="이전으로 이동" />
         				</a>
      				</p>
      				<p class="next_btn">
         				<a href="#">
         				<img src="${pageContext.request.contextPath}/resources/img/bestbook_btn_right.png" width="40px" height="50px" alt="다음으로 이동" />
         				</a>
      				</p>
   				</div>
 			</div> <!-- close of bestbook_zone -->
 			
 			
 						<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="main-title">
						<h1>기획전</h1>
					</div>
				</div>
			</div> -->

			<div id="showroom_zone">
   				<div id="showroom">
      				<ul>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/showroom1.png"  alt="" />
        				<span>365일 연중무휴 득템찬스!<strong>오늘의집 특가창고 UP TO 90%</strong></span></a>
              			</li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/showroom2.png" alt="" />
              				<span>SNS에서 보던 캠핑템이 가득!<strong>감성 캠핑 UP TO 72%</strong></span></a>
              			</li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/showroom3.png" alt="" />
              				<span>무더운 여름, 보기만 해도 시원한 카페트/러그<strong>SUMMER RUG BEST 30!</strong></span></a>
              			</li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/showroom4.png" alt="" />
              				 <span>세라믹/대리석/원목/아일랜드식탁/주방수납장<strong>소재별 인기식탁 모아보기 ~74%</strong></span></a>
                       </li>
        				<li><a href="#"><img src="${pageContext.request.contextPath}/resources/img/showroom5.png" alt="" />
              				 <span>나에게 맞는 향찾기<strong>캔들&디퓨저 추천가이드</strong></span></a>
                       </li>

      				</ul>
      				<p class="sr_prev_btn">
         				<a href="#">
         				<img src="${pageContext.request.contextPath}/resources/img/bestbook_btn_left.png" width="40px" height="50px" alt="이전으로 이동" />
         				</a>
      				</p>
      				<p class="sr_next_btn">
         				<a href="#">
         				<img src="${pageContext.request.contextPath}/resources/img/bestbook_btn_right.png" width="40px" height="50px" alt="다음으로 이동" />
         				</a>
      				</p>
   				</div>
 			</div> <!-- close of bestbook_zone -->
 			
	</section>
	<!--######## End Recent Completed Project Area ########-->

	 <%@ include file="include/footer.jspf" %>

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