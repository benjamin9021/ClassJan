<%@page import="com.naver.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	Object obj = session.getAttribute("login");
	if(obj != null){ 
		MemberDTO dto = (MemberDTO)obj;
		%>
		<%=dto.getId()%>
		��,ȯ��
		<a href="logout.do">�α׾ƿ�</a>
		<% }else{%>
		<a href="login.do">�α���</a>
		<%
	}
%>