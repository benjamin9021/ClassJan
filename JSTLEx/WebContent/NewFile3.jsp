<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	
	<%
		String[] arr1 = {"a", "b","c","d","e"};
		request.setAttribute("arr1", arr1);	
	
	%>

	<c:forEach items="${arr1}" var="msg">
	${msg}<br>
	
	</c:forEach>
	<hr>
	
	<c:forEach items="${arr1}" var="msg" begin="1" end="3">
	${msg}<br>
	
	</c:forEach>
	
	<hr>
	
	<c:forEach items="${arr1}" var="msg" step="2">
	${msg}
	</c:forEach>



</body>
</html>