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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>

<body>
	<h1> 글 자세히 보기</h1>
	
	id : ${dto.id}<br>
	title: ${dto.title}<br>
	content<br>
	<div>
		${dto.content}
	</div>
	
	<br>
	<c:if test="${not empty login.nKey }">
	<a href="breplyui.do?num=${dto.num}">답글</a></c:if> | <a href="blist.do"> 목록 </a> 
	<c:if test="${dto.id == login.id }">
	<a href="bupdateui.do?num=${dto.num}"> | 수정 </a>
	</c:if>
	<c:if test="${dto.id == login.id || login.nKey >= 100 }">
	<a href="bdelete.do?num=${dto.num}">|  삭제 </a> 
	</c:if>

</body>

</html>