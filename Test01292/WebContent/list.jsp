<%@page import="com.naver.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
	MemberDTO login = (MemberDTO)session.getAttribute("login");
%>
<%-- 	<c:if test="${not empty login}">
		${login.name} ��, ȯ���մϴ�. <a href="logout.do">�α׾ƿ� </a>
	</c:if>
	<c:if test="${empty login}">
	 <a href="login.do">�α���</a>
	</c:if> --%>
	
	<c:choose>
	<c:when test="${not empty login}">
	${login.name} ��, ȯ���մϴ�. <a href="logout.do">�α׾ƿ� </a>
	</c:when>
	<c:otherwise>
	 <a href="login.do">�α���</a>
	</c:otherwise>
	
	</c:choose>
	

<h1>ȸ�� ���</h1>
  
	<c:forEach varStatus="status" items="${list}" var="dto" >
	${dto.id} :<a href="read.do?id=${dto.id}">${dto.name}</a> : ${dto.age}<br>
	</c:forEach>



</body>
</html>