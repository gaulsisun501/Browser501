<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	
	String fname = request.getParameter("fname");
	String custId = request.getParameter("custId");
	
	out.println("fname = " + fname + " : " + "cusId = " + custId);
%>