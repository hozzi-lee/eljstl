<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>데이터형</h1>
	
	<%-- 	
	servlet에서 넘어온 값들을 표현할때 사용한다(request.getAttribute, getPareamter)
	java(<% %>)보다 간결하다
	 --%>
	
	<p>
		
		정수형: ${10}<br>
		
		실수형: ${7.5}<br>
		
		문자열: ${"이호진"}<br>
		
		논리형: ${true}<br>
		
		null: ${null}<br>
		
	</p>

</body>
</html>