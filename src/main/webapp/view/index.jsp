<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${ id == null}">
		<h1>main입니다.</h1>
	</c:if>

	<c:if test="${ id != null}">
		<h1>main입니다. ${ id }님 반갑습니다.</h1>
	</c:if>
</body>
</html>