<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 등록</title>
</head>
<body>

<!-- 게시글을 등록했습니다. -->
<br>
<%-- ${ctxPath = pageContext.request.contextPath ; ''} --%>
<%-- <a href="${ctxPath}/board/list.do">[게시글목록보기]</a> --%>
<%-- <a href="${ctxPath}/borad/read.do?no=${newArticleNo}">[게시글내용보기]</a> --%>

<script>
   alert("상품평을 등록했습니다.");
   location.href="${pageContext.request.contextPath}/store/read.do?no=${newStoreReviewNo}";
</script>

</body>
</html>