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

	<c:set var="test1" value="11" scope="page"/> <!--scope�ȿ� �Ƚ��ָ� ������  -->
	<c:set var="test2" value="22"/> 
	${test1}<br>
	${test2}<br>
	<hr>
	<c:out value="${test1}"/><br>  <!-- ""�ȿ� ELǥ�Ⱑ ���� -->
	<c:out value="${test2}"/><br>
	<hr>
	
	
	




</body>
</html>