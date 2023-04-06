<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
 <div class="form-group">
<c:forEach items="${userList }" var="member">
<tr>
<td>${member.uno }</td>
<td>${member.id }</td>
<td>${member.password }</td>
<td>${member.name  }</td>
</tr>
</c:forEach>
</div>
</body>
</html>
   