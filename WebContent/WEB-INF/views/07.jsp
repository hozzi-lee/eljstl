<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

pageContext.setAttribute("name", "page name");
request.setAttribute("name", "request name");
session.setAttribute("name", "session name");
application.setAttribute("name", "application name");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>java코드</h1>
	
	page name = &lt;%=pageContext.getAttribute("name")%&gt; == <%=pageContext.getAttribute("name")%> <br>
	request name = &lt;%=request.getAttribute("name")%&gt; == <%=request.getAttribute("name")%> <br>
	session name = &lt;%=session.getAttribute("name")%&gt; == <%=session.getAttribute("name")%> <br>
	application name = &lt;%=application.getAttribute("name")%&gt; == <%=application.getAttribute("name")%> <br>
	
	<br>
	
	<h1>el 범주 우선순위</h1>
	
	\${name} == ${name}<br>
	<br>
	1순위 pageContext 출력: \${pageScope.name} == ${pageScope.name}<br>
	<br>
	2순위: \${requestScope.name} == ${requestScope.name}<br>
	<br>
	3순위: \${sessionScope.name} == ${sessionScope.name}<br>
	<br>
	4순위: \${applicationScope.name} == ${applicationScope.name}<br>
	<br>
	1순위 pageContext 출력: \${name} == ${name}<br>

</body>
</html>