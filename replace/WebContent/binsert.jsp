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
<c:if test="${not empty login.nKey }">
    <h1>�Խñ� �ۼ�</h1>
    
    <form action="binsertui.do" method="post">
          <input type="hidden" name="num" value="${num}">
          <input name="id" required readonly type="hidden" value="${login.id }"><br>
           ����: <input name="title" required><br>
          content<br>
          <textarea rows="5" name="content" required></textarea>
          <br>
          <input type="submit" value="���">
    </form>
</c:if>

<c:if test="${empty login.nKey }">
<form action="blist.do" method="post">
ȸ���� �ۼ��� �����մϴ�.
<input type="submit" value="������������ �̵�">
</form>
</c:if>  

</body>
</html>