<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>시공 후기</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/interior.css">
<link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">


</head>

<header>
<div class="login-logo">
         <a href="${pageContext.request.contextPath}/index">
            <img src="${pageContext.request.contextPath}/resources/img/logo4.png" alt="" title="" width="75px" height="75px"/>
         Being House
         </a>
        	 
      </div>
   
</header>
<body>

<p class="box-title">인테리어 신청하기</p>

<div class="ask-box-end">
<form action="${pageContext.request.contextPath}/interiorAsk/modifyInteriorAsk2?num=${interiorAskVO.num}" method="post">
<input type="hidden" name="email" value="${login.email}">
<input type="hidden" name="name" value="${login.name}">
<div class="all-ask">
<p>
	제목 :
	<input type="text" name="title" value="${interiorAskVO.title}">
</p>
<p>신청자 :
	<input type="text" name="name" value="${interiorAskVO.name}"> 
</p>
<p>업체명 :
	<input type="text" name="cname" value="${interiorAskVO.cname}"> 
</p>
<p>평수 :
	<input type="text" name="area" value="${interiorAskVO.area}"> 
</p>
<p>시공 분야 :
	<input type="text" name="fieldof" value="${interiorAskVO.fieldof}"> 
</p>
<p>시공 희망일 :
	<input type="text" name="datestart" value="${interiorAskVO.datestart}"> 
</p>
<p>시공 완료일 :
	<input type="text" name="datedone" value="${interiorAskVO.datedone}"> 
</p>
<p>시공 주소 :
	<input type="text" name="address" value="${interiorAskVO.address}"> 
</p>

<p>희망 예산 :
<input type="text" name="budget" value="${interiorAskVO.budget}"> 
</p>

<div class="ask-message">
<p>전달사항 :
	<input type="text" name="message" value="${interiorAskVO.message}">
</p>
</div>

<p>
	연락처 :
	<input type="text" name="tel" value="${interiorAskVO.tel}">
</p>
<div class="ask-message">
<p>업체 답변:
	<input type="text" name="answer" value="${interiorAskVO.answer}">
</p>
</div>

<p>평점(/5) :
	<input type="number" name="grade" value="${modReq.grade}"placeholder="0/5">
</p>
<div class="ask-message">
<p>총평 :
	<input type="text" name="contentof" value="${modReq.contentof}""placeholder="인테리어 후기">
</p>
</div>
<input type="submit" value="후기 등록">
</div>


</form>
</div>

</body>


</html>