<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" 
           uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL SQL</title>
</head>
<body>
	<!-- Create Object Connection -->
	<sql:setDataSource
		driver="org.postgresql.Driver"
		url="jdbc:postgresql://localhost:5432/jdbc"
		user="lunsovathana"
		password=""
		var="con"
	/>
	
	<!-- insert -->
	<%-- <sql:update dataSource="${con}">
		insert into tbstudent values(5, 'Theng')
	</sql:update> --%>
	
	<%-- <sql:update dataSource="${con}">
		insert into tbstudent values(?, ?)
		<sql:param value="${6}"/>
		<sql:param value="Chivon"/>
	</sql:update> --%>
	
	<!-- update -->

	<%-- <sql:transaction dataSource="${con}">
		<sql:update>
			insert into tbstudent values(5, 'Theng')
		</sql:update>
		<sql:update>
			update tbstudent set stu_name=? where stu_id=?
			<sql:param value="theng"/>
		<sql:param value="${5}"/>
	</sql:update>
	</sql:transaction> --%>
	
	<!-- select record from database -->
	<sql:query var="result"
		dataSource="${con}"
		sql="select * from tbstudent"
	/>
	
	<table>
		<tr>
			<td>ID</td>
			<td>Name</td>
		</tr>
		<c:forEach items="${result.rows}" var="row">
			<tr>
				<td>${row.stu_id}</td>
				<td>${row.stu_name}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>














