<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="l" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Core</title>
</head>
<body>
	<h1><l:out value="Hello JSTL"/></h1>
	<!-- USE set to declare variable -->
	<%-- <l:set var="msg" value="This is message from JSTL"/>
	<p>${msg}</p> --%>
	
	
	<!-- USE set to set value to java bean property-->
	<%-- <jsp:useBean id="user" class="bean.User"/>
	<l:set property="username" target="${user}" value="Lun Sovathana"/>
	<l:out value="${user.username}"/> --%>
	
	<!-- Remove: remove variable from (scope)-->
	<%-- <l:remove var="msg"/>
	<p><l:out value="${msg}"/></p> --%>
	
	<%-- <%
		try{
			// error
		}catch(Exception e){
			
		}
	%> --%>
	
	<%-- <l:catch var="e">
		<p>Catch Block</p>
		<% int a=1/0; %>
	</l:catch>
	
	<!-- if(condition) -->
	<l:if test="${e!=null}">
		<p>Error occur</p>
	</l:if> --%>
	
	<!-- choose = switch -->
	<!-- when = case -->
	<!-- otherwise = default -->
	<%-- <l:set var="i" value="${1}"/>
	<l:choose>
		<l:when test="${i==10}">
			<p>I is equal to 10</p>
		</l:when>
		<l:when test="${i<=10}">
			<p>I is less than 10</p>
		</l:when>
		<l:otherwise>
			<p>I is equal to ${i}</p>
		</l:otherwise>
	</l:choose> --%>
	
	<%-- <l:import url="http://www.google.com" var="google"/>
	<p>Google: <l:out value="${google}"/></p>
	<p>Google: ${google}</p> --%>
	
	<!-- forEach -->
	<%-- <l:forEach var="i" begin="1" end="10" step="1">
		<p>${i}</p>
	</l:forEach> --%>
	<%-- <l:set var="item" value="Apple#Sony#LG"/>
	<l:forTokens items="${item}" delims="#" var="i">
		<p>${i}</p>
	</l:forTokens> --%>
	
	<!-- www.kshrd.com?user=username& -->
	<%-- <l:url var="hrd" value="http://www.kshrd.com.kh">
		<l:param name="user" value="hrd"/>
		<l:param name="password" value="123"/>
	</l:url>
	<p>${hrd}</p> --%>
	
	<%-- <l:redirect url="request.jsp"></l:redirect> --%>
</body>
</html>










