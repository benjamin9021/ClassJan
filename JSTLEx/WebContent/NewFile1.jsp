<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<%
		/*commnad class���� ���ε��ߴٰ� �����غ�����  */		
		request.setAttribute("t1", "test1");
	%>
	${t1}
	<br>
	<hr>
	<c:if test="${t1 == 'test2'}">
	�ȳ��ϼ���
	<h1>�ȳ��ϼ���</h1>
	</c:if>

	<c:if test="${t1 != 'test2'}">
	�ű��ϳ�
	<h1>�ű��ϳ�</h1>
	</c:if>




</body>
</html>