<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Expression Language</title>
</head>
<body>
	<% 
		Map<String, String> list = new HashMap<String, String>();
		list.put("name", "Mav");
		list.put("pass", "123");
		session.setAttribute("ses", list);
		
	%>
	<p>${sessionScope.ses}</p>
	<p>${sessionScope.ses.pass}</p>
</body>
</html>







