<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	h1, span, form, body {
		display: block;
		text-align: center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>장바구니</h1>
<br>
<span>선택한 상품목록</span>
<br>
<span><b><%=session.getAttribute("name") %></b>의 장바구니</span>
<hr>
<table border="1">
	<tr>
		<td>번호</td>
		<td>음식 종류</td>
		<td>수량</td>
	</tr>
<%
	ArrayList<String> list = (ArrayList) session.getAttribute("food");
	ArrayList<Integer> listNum = (ArrayList) session.getAttribute("num");
	int money = 0;
	
	if(list == null) {
		out.print("<script>alert('장바구니가 비어있습니다. 음식을 선택해주세요.')</script>");
	} else {
		for(int i=0; i<list.size(); i++){
			int sum = 0;
			if(list.get(i).equals("햄버거")){
				sum = 5000;
			} else if(list.get(i).equals("떡볶이")){
				sum = 3500;
			} else if(list.get(i).equals("감자탕")){
				sum = 12000;
			} else if(list.get(i).equals("짜장면")){
				sum = 4500;
			} else if(list.get(i).equals("김치볶음밥")){
				sum = 5500;
			} else if(list.get(i).equals("샐러드")){
				sum = 6500;
			}
			money += sum*listNum.get(i);
		}
		for(int i=0; i<list.size(); i++){
%>
	<tr>
		<td><%=i+1 %></td>
		<td><%=list.get(i) %></td>
		<td><%=listNum.get(i) %></td>
	</tr>
<%
		}
	}
%>
	<tr>
		<td colspan="3">
			총 금액: <%=money %>원
		</td>
	</tr>
</table>
<br>
	<input type="button" onclick="history.back()" value="뒤로가기">
	<form action="Login.jsp">
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>