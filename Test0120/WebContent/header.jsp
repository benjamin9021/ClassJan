<%@page import="com.naver.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Object obj = session.getAttribute("login");
	if (obj != null) {
		MemberDTO dto = (MemberDTO) obj;
%>
	<%=dto.getName()%>
	��, ȯ���մϴ�.
	<a href='logoutui.do'>�α׾ƿ� </a>
<%
	} else {
%>
	<a href.do='loginui.do'>�α��� </a>
<%
	}
%>
