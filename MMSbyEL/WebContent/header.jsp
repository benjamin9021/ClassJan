<%@page import="com.naver.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	Object obj = session.getAttribute("login");
	if(obj != null){ 
		MemberDTO dto = (MemberDTO)obj;
		%>
		<%=dto.getId()%>
		님,환영
		<a href="logout.do">로그아웃</a>
		<% }else{%>
		<a href="login.do">로그인</a>
		<%
	}
%>