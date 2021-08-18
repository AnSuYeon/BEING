<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr"/>
<title>Home</title>
</head>
<body>
	<h1>Board List</h1>
	<table border="1">
	<thead>
	<tr>
		<th>��ȣ</th>
		<th>�̸�</th>
		<th>����</th>
		<th>�ۼ���</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${list}">
		<tr>
			<td>${item.num}</td>
			<td>${item.name}</td>
			<td>${item.title}</td>
			<td>${item.registDay}</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
</body>
</html>
