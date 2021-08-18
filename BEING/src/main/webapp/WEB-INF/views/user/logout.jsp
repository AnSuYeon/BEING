<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%
   request.setCharacterEncoding("utf-8");
%>

<script>
   alert("성공적으로 로그아웃 되었습니다.");
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>beings</title>
</head>
<body>
	<script type="text/javascript">
		self.location = "${pageContext.request.contextPath}/index";
	</script>
</body>
</html>


