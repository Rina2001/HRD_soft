<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Core</title>
</head>
<body>
	<h1><c:out value="Hello JSTL"/></h1>
	
	<!-- use set to set properties -->
	<%-- <jsp:useBean id="user" class="bean.User"/> --%>
	<%-- <c:set target="${user}" property="username" value="Pisith"/> --%>
	<%-- <c:set target="${user}" property="username" value="${param.param_name}"/> --%>
	<%-- <p>${user.username}</p> --%>
	
	<!-- use set to declare variable -->
	<%-- <c:set var="msg" value="This is message."/>
	<p>Before Remove: ${msg}</p>
	<c:remove var="msg"/>
	<p>After Remove: ${msg}</p> --%>
	
	<!-- catch -->
	<%-- <%
		try{
			
		}catch(Exception e){
			
		}
	%> --%>
	<%-- <c:catch var="e">
		Catch Block
		<% int i=1/0; %>
	</c:catch>
	<!-- if(condition) -->
	<c:if test="${e!=null}">
		<p>Error Occur</p>
	</c:if> --%>
	
	<!-- choose = switch -->
	<!-- when = case -->
	<!-- otherwise = default -->
	<%-- <c:set var="i" value="10"/>
	<c:choose>
		<c:when test="${i>10}">
			<p>i is bigger than 10</p>
		</c:when>
		<c:when test="${i<10}">
			<p>i is smaller than 10</p>
		</c:when>
		<c:otherwise>
			<p>default</p>
			<p>i is equal ${i}</p>
		</c:otherwise>
	</c:choose> --%>
	
	<%-- <c:import url="https://www.google.com.kh"/> --%>
	<%-- <c:import context="/" charEncoding="UTF-8" url="https://www.facebook.com/" var="google"/>
	<c:out value="${google}"/>
	
		${google} --%>
		
	<!-- forEach -->
	<%-- <c:forEach var="i" begin="1" end="10" step="2">
		<p>${i}</p>
	</c:forEach> --%>
	
	<%-- <c:forTokens items="Apple Sony LG" delims=" " var="i">
		<p>${i}</p>
	</c:forTokens> --%>
	
	<c:url value="http://www.kshrd.com.kh" var="url">
		<c:param name="user" value="kshrd"/>
		<c:param name="password" value="123"/>
	</c:url>
	<p>${url}</p>
	
	<c:redirect url="request.jsp">
		<c:param name="a" value="aaaa"></c:param>
	</c:redirect>
</body>
</html>












