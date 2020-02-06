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
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Home</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="blist.do">게시판</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a href="#">Page 2</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="minsertui.do"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			</ul>
			
			<c:choose>
				<c:when test="${not empty login }">
   ${login.name } 님 환영합니다. <a href="mlogout.do">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="mloginui.do">로그인</a>
				</c:otherwise>
			</c:choose>

			<div class="nav-right">
				<div class="login-container">
					<form action="mloginui.do">
						<input type="text" placeholder="ID" name="ID"> <input
							type="text" placeholder="Password" name="psw">
						<button type="submit">Login</button>
					
					</form>
				
				</div>
		
			</div>

		</div>

	</nav>

	<h1 style="text-align: center; color: pink;">게시판</h1>
	<div class="container">
		<table class="table table-striped table-hover" style="">
			<thead>
				<tr style="background-color: #ffbdc4">
					<th style="width: 5%;">NO.</th>
					<th>&nbsp;제목</th>
					<th>작성자</th>
					<th style="text-align: center;">작성일</th>
					<th style="text-align: center;">조회수</th>

				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list }" var="dto">
					<tr class="active">
						<td style="background-color: #929292; color: white">${dto.num }</td>
						<td><a href="bread.do?num=${dto.num }"> <c:forEach
									begin="1" end="${dto.repIndent }">
            &nbsp; </c:forEach> ${dto.title }
						</a></td>
						<td>${dto.id }</td>
						<td style="text-align: center;">${dto.writeday }</td>
						<td style="text-align: center;">${dto.readcnt }</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>

		<button type="button" onclick="location.href='binsertui.do'"
			class="btn btn-default"
			style="background-color: black; color: white;">글쓰기</button>
	</div>

	<jsp:include page="page.jsp" />
	<jsp:include page="search.jsp" />
</body>
</html>