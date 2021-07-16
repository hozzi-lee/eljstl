<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="vo.UserVo" %>

<%

// Attribute == Object Class
UserVo authUser = (UserVo)session.getAttribute("authUser");

%>

	<div id="header" class="clearfix">
			<h1>
				java코드
			</h1>

			<%
			if (authUser != null) { // login
			%>

			<ul>
				<li>&lt;%=authUser.getName()%&gt; == <%=authUser.getName()%>님 안녕하세요^^</li>
				<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
				<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
			</ul>
			
			<%
			} else {
			%>
			
			<ul>
				<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
				<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
			</ul>
			
			<%
			}
			%>
			
	</div>
		<!-- //header -->
		
		
		
		
	<div id="header" class="clearfix">
		<h1>
			el
		</h1>

		<%
		if (authUser != null) { // login
		%>

		<ul>
			<li>\${ sessionScope.authUser.name } == ${ sessionScope.authUser.name }님 안녕하세요^^</li>
			<li>\${ authUser.name } == ${ authUser.name }님 안녕하세요^^</li>
			<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
		
		<%
		} else {
		%>
		
		<ul>
			<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>
		
		<%
		}
		%>
		
	</div>
	<!-- //header -->
