<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>파라미터</h1>
	
	<p>localhost:8088/elJstl/03?id=you&pw=1234&name=호진&num1=100&num2=200</p>
	
	<h2>자바문법 parameter값 꺼내쓰기</h2>
	&lt;%<br>
	String id = request.getParameter("id");<br>
	String pw = request.getParameter("pw");<br>
	String name = request.getParameter("name");<br>
	int num1 = Integer.parseInt(request.getParameter("num1");<br>
	int num2 = Integer.parseInt(request.getParameter("num2");<br>
	%&gt;<br>
	
	id = &lt;%=id%&gt; <br>
	pw = &lt;%=pw%&gt;<br>
	name = &lt;%=name%&gt;<br>
	num1 = &lt;%=num1%&gt;<br>
	num2 = &lt;%=num2%&gt;<br>
	
	<br>
	==
	<br>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	<br>
	id = <%=id%> <br>
	pw = <%=pw%><br>
	name = <%=name%><br>
	num1 = <%=num1%><br>
	num2 = <%=num2%><br>
	
	
	<h2>el --> 자바문법 parameter값 꺼내쓰기</h2>
	
	id = \${ param.id } == ${ param.id } <br>
	pw = \${ param.pw } == ${ param.pw }<br>
	name = \${ param.name } == ${ param.name }<br>
	num1 = \${ param.num1 } == ${ param.num1 }<br>
	num2 = \${ param.num2 } == ${ param.num2 }s<br>

</body>
</html>