<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	ArrayList<String> list = (ArrayList) session.getAttribute("food");
	ArrayList<Integer> listNum = (ArrayList) session.getAttribute("num");
	
	String food = request.getParameter("food");
	int num = Integer.parseInt(request.getParameter("num"));
	
	if(list == null) {
		list = new ArrayList<>();
		listNum = new ArrayList<>();
	}
	session.setAttribute("food", list);
	session.setAttribute("num", listNum);
	list.add(food);
	listNum.add(num);
%>
<script type="text/javascript">
	alert("<%=food%> 추가 완료")
	history.back()
</script>
</body>
</html>