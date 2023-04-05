<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	h1, form {
		display: block;
		text-align: center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate();
%>
<h1>로그인</h1>
<hr>
<form action="setProduct.jsp" method="post">
	<input type="text" name="id">
	<input type="submit" value="로그인">
</form>
</body>
</html>