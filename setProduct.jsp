<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	h1, span, form {
		display: block;
		text-align: center;
	}
	tr, td {
		text-align: center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("id");
	session.setAttribute("name", name);
	if(session.getAttribute("name") == ""){
		out.print("<script>alert('아이디가 입력되지 않았습니다. 다시 입력하세요.')</script>");
%>
	<h1><a href="Login.jsp">로그인으로 이동</a></h1>
<%	
	} else {
		name = (String) session.getAttribute("name");
%>
	<h1>상품선택</h1>
	<hr>
	<span><b><%=name %>님이 로그인 한 상태입니다.</b></span>
	<hr>
	<form action="addProduct.jsp" method="post" id="form">
		<table border="1">
			<tr>
				<td>음식 종류</td>
				<td>수량</td>
			</tr>
			<tr>
				<td>
					<select name="food" id="food">
						<option value="햄버거">햄버거</option>
						<option value="떡볶이">떡볶이</option>
						<option value="감자탕">감자탕</option>
						<option value="짜장면">짜장면</option>
						<option value="김치볶음밥">김치볶음밥</option>
						<option value="샐러드">샐러드</option>
					</select>
				</td>
				<td>
					<input type="number" name="num">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="추가">
				</td>
			</tr>
		</table>
		<h2><a href="checkout.jsp">장바구니</a></h2>
	</form>
<%
	}
%>
</body>
</html>