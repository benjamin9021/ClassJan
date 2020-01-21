<%@page import="com.naver.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>
<%
	Object obj2 = request.getAttribute("list");
if(obj2 != null){
	List<MemberDTO> list = (List<MemberDTO>)obj2;
	for(int i = 0; i < list.size(); i++){
		MemberDTO dto = list.get(i);
		%>
		<%=dto.getId() %>:
		<a href="read.do?id="<%=dto.getId() %>"><%=dto.getName() %></a>
		<br>
		<%
}
%>


</body>
</html>