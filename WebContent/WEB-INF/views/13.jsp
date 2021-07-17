<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${ requestScope.userList }" var="user" varStatus="status">
		<h1>${ user.name }</h1>
		<h2>${ user.email }</h2>
		<h3>${ user.password }</h3>
		<h4>${ user.gender }</h4>
	</c:forEach>

</body>
</html>