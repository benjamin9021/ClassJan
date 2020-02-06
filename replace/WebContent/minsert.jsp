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
<style>


input[type=text], select {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=date], select {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 10%;
	background-color: #808080;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button[type=button] {
	width: 14%;
	background-color: #808080;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>

</head>
<body>

	<div class="jumbotron text-center" style="">
		<h1>ȸ�� ����</h1>
	</div>

	<hr>
	<div class="container">
	<form action="minsertui.do" method="post">
		<label for="id">���̵�</label><br> 
		<input type="text" id="id"
			required placeholder="���̵�" name="id">
		<button type="button">�ߺ� Ȯ��</button>
		<hr>
		<label for="pw">��й�ȣ</label><br> <input type="text" id="pw"
			required name="pw" placeholder="��й�ȣ" type="password">
		<hr>
		<label for="name">����</label><br> <input type="text" id="name"
			required name="name" placeholder="����">
		<hr>
		<label for="birth">�������</label><br>
		<input id="birth" required name="birthday"
			placeholder="������� " type="date">
		<hr>
		<input type="submit" value="���" class="btn btn-dark">

	</form>
	</div>


	<script type="text/javascript">
      $(document).ready(function() {
         
         $("button").click(function() {
             var id = $("input[name='id']").val();
             
             $.ajax({
                type: 'get',
                url : 'mCheckId.do',
                data: {
                   id : id
                },
                dataType: 'text',
                success : function(result) {
                   $("p").text(result);
                }
             });
      });
         
   
   });
</script>
</body>
</html>