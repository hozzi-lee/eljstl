<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>연산</h1>
	
	<p>
	
	더하기: \${5+2} == ${5+2}<br>
	빼기: \${5-2} == ${5-2}<br>
	곱하기: \${5*2} == ${5*2}<br>
	나누기: \${5/2} == ${5/2}<br>
	나누기2: \${5 div 2} == ${5 div 2}<br>
	나누기(나머지): \${5%2} == ${5%2}<br>
	나누기(나머지)2: \${5 mod 2} == ${5 mod 2}<br>
	
	<br>
	
	비교연산자(>): \${5>2} == ${5>2}<br>
	비교연산자(>)2: \${5 gt 2} == ${5 gt 2}<br>
	<br>
	비교연산자(<): \${5<2} == ${5<2}<br>
	비교연산자(<)2: \${5 lt 2} == ${5 lt 2}<br>
	<br>
	비교연산자(>=): \${5>=2} == ${5>=2}<br>
	비교연산자(>=)2: \${5 ge 2} == ${5 ge 2}<br>
	<br>
	비교연산자(<=): \${5<=2} == ${5<=2}<br>
	비교연산자(<=)2: \${5 le 2} == ${5 le 2}<br>
	<br>
	비교연산자(==): \${5==2} == ${5==2}<br>
	비교연산자(==)2: \${5 eq 2} == ${5 eq 2}<br>
	<br>
	비교연산자(!=): \${5!=2} == ${5!=2}<br>
	비교연산자(!=)2: \${5 ne 2} == ${5 ne 2}<br>
	<br>
	\${5>=2 ? "커5" : "작아2" } == ${5>=2 ? "커5" : "작아2" }
	<br>
	<br>
	\${ (5>2) || (2>10) } == ${ (5>2) || (2>10) }
	<br>
	<br>
	\${ (5>2) && (2>10) } == ${ (5>2) && (2>10) }
	<br>
	<br>
	\${srt} str변수이름은 값이 없음 == ${str} 공백
	<br>
	<br>
	\${empty srt} str변수는 값이 비었니? == ${empty str}
	<br>
	<br>
	&lt;% String val = (String)request.getAttribute("reqVal"); %&gt;<br>
	&lt;%= val %&gt; == <%
	String val = (String)request.getAttribute("reqVal");
	%>
	<%=val%>
	<br>
	<br>
	\${reqVal} == ${reqVal}
	
	</p>

</body>
</html>