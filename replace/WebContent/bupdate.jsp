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

	<h1> �Խñ� ���� </h1>
	

    <form action="bupdate.do" method="post">
     <input readonly type="hidden" name="num" value="${dto.num}"><br>
     <input readonly type="hidden" name="id" value="${dto.id}">
     <input type="hidden" name="notice" value="${dto.notice }">
     title : <input required name="title" value="${dto.title}"><br>
     content<br>
     <textarea rows="5" name="content" required>${dto.content}</textarea>
     <br>
     <input type="submit" value="����">
     </form>


</body>

</html>