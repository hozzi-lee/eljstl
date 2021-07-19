<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- // JSTL -->

<!-- JAVA -->
<%@ page import="java.util.List" %>
<%@ page import="vo.UserVo" %>

<%
List<UserVo> uList = (List<UserVo>)request.getAttribute("userList");
%>
<!-- // JAVA -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>java for문</h1>
		<table border="1">
			<thead style="text-align:conter;">
				<tr>
					<th>no</th>
					<th>name</th>
					<th>email</th>
					<th>password</th>
					<th>gender</th>
				</tr>
			</thead>
			<tbody>
	<%
	for (int i = 0; i < uList.size(); i++) {
	%>
				<tr>
					<td><%=uList.get(i).getNo()%></td>
					<td><%=uList.get(i).getName()%></td>
					<td><%=uList.get(i).getEmail()%></td>
					<td><%=uList.get(i).getPassword()%></td>
					<td><%=uList.get(i).getGender()%></td>
				</tr>
	<%
	}
	%>
			</tbody>
		</table>
		
		<br>
		
		
	<h1>java Enhanced for문</h1>
		<table border="1">
			<thead style="text-align:conter;">
				<tr>
					<th>no</th>
					<th>name</th>
					<th>email</th>
					<th>password</th>
					<th>gender</th>
				</tr>
			</thead>
			<tbody>
	<%
	for (UserVo u : uList) {
	%>
				<tr>
					<td><%=u.getNo()%></td>
					<td><%=u.getName()%></td>
					<td><%=u.getEmail()%></td>
					<td><%=u.getPassword()%></td>
					<td><%=u.getGender()%></td>
				</tr>
	<%
	}
	%>
			</tbody>
		</table>
		
		<br>




	<h1>elJstl</h1>
		<table border="1">
			<thead style="text-align:conter;">
				<tr>
					<th>no</th>
					<th>name</th>
					<th>email</th>
					<th>password</th>
					<th>gender</th>
					<th>index</th>
					<th>count</th>
				</tr>
			</thead>
			<tbody>
	<c:forEach items="${ requestScope.userList }" var="user" varStatus="status" begin="5" end="15" step="3">
				<tr>
					<td>${ user.no }</td>
					<td>${ user.name }</td>
					<td>${ user.email }</td>
					<td>${ user.password }</td>
					<td>${ user.gender }</td>
					<td>${ status.index }</td>
					<td>${ status.count }</td>
				</tr>
	</c:forEach>
			</tbody>
		</table>
	

</body>
</html>