<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %>
s
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
&lt; &gt;
	<h1>request.getAttribute 값 꺼내쓰기</h1>
	
	<h2>자바문법</h2>
	&lt;% UserVo userVo = (UserVo)request.getAttribute("userVo"); %&gt;<br>
	&lt;% int num = (int)request.getAttribute("num"); %&gt;<br>
	&lt;% String str = (String)request.getAttribute("str"); %&gt;<br>
	
	name = &lt;%=userVo.getName()%&gt;<br>
	email = &lt;%=userVo.getEmail()%&gt;<br>
	password = &lt;%=userVo.getPassword()%&gt;<br>
	gender = &lt;%=userVo.getGender()%&gt;<br>
	num = &lt;%=num%&gt;<br>
	str = &lt;%=str%&gt;<br>
	
	<br>
	==
	<br>
	<br>
	
	<%
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	%>
	name = <%=userVo.getName()%><br>
	email = <%=userVo.getEmail()%><br>
	password = <%=userVo.getPassword()%><br>
	gender = <%=userVo.getGender()%><br>
	num = <%=num%><br>
	str = <%=str%><br>
	<br>
	
	<h2>el</h2>
	num = \${ requestScope.num } == ${ requestScope.num }<br>
	num = \${ num } == ${ num }<br>
	str = \${ requestScope.str } == ${ requestScope.str }<br>
	str = \${ str } == ${ str }<br>
	<br>
	name = \${ userVo.name } == ${ userVo.name } --> .name이 getName()에 접근한다<br>
	name = \${ userVo.getName() } == ${ userVo.getName() }<br>
	name = \${ requestScope.userVo.name } == ${ requestScope.userVo.name }<br>
	name = \${ requestScope.userVo.getName() } == ${ requestScope.userVo.getName() }<br>
	<br>
	email = \${ userVo.email } == ${ userVo.email } --> .email이 getEmail()에 접근한다<br>
	email = \${ userVo.getEmail() } == ${ userVo.getEmail() }<br>
	email = \${ requestScope.userVo.email } == ${ requestScope.userVo.email }<br>
	email = \${ requestScope.userVo.getEmail() } == ${ requestScope.userVo.getEmail() }<br>
	<br>
	password, gender 동일

</body>
</html>