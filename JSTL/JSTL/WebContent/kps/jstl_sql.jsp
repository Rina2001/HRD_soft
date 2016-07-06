<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL SQL</title>
</head>
<body>
	<!-- Create connection object -->
	<sql:setDataSource
		driver="org.postgresql.Driver"
		url="jdbc:postgresql://localhost:5432/jdbc"
		user="lunsovathana"
		password=""
		var="con"
	/>
	
	
	
	<!-- create statement -->
	<!-- update -->
	<%-- <sql:transaction dataSource="${con}">
		<sql:update
		sql="insert into tbstudent values(?, ?)"
	>
		<sql:param value="${9}"/>
		<sql:param value="Seyha"/>
	</sql:update>
	<sql:update>
		UPDATE tbstudent SET stu_name='Sith' where stu_id=8
	</sql:update>
	</sql:transaction> --%>
	
	
	
	<!-- select -->
	<sql:query 
		var="result" 
		sql="SELECT * FROM tbstudent order by stu_id"
		dataSource="${con}" 
	>
		<!-- SELECT * FROM tbstudent -->
	</sql:query>
	
	<table border="1">
		<tr>
			<td>ID</td>
			<td>Name</td>
		</tr>
		<c:forEach items="${result.rows}" var="r" varStatus="status">
			<%-- <c:if test="${!status.last}"> --%>
				<tr>
					<td>${r.stu_id}</td>
					<td>${r.stu_name}</td>
				</tr>
			<%-- </c:if> --%>
			
		</c:forEach>
	</table>
</body>
</html>











