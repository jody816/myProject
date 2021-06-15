<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>
<body>
	<form action="login.do" method="post">
		<div id="container">
		<fieldset>
			<legend>Login</legend>
			<ul type="none">
				<li>
					<label>&nbsp;&nbsp;I&nbsp;D&nbsp;:&nbsp;</label>
					<input type="text" name="id">
				</li>
				<li>
					<label>P&nbsp;W&nbsp;:&nbsp;</label>
					<input type="password" name="pwd">
				</li>
			</ul>
			<div id="buttons">
			<input type="submit" value="Login">
          	<input type="button" value="Join" OnClick="window.location.href='join.jsp'">
          	</div>
		</fieldset>
		</div>
	</form>
	<%
		String result = (String)request.getAttribute("msg");
		if(result != null && result.equals("no id")){
			out.println("<script type=\"text/javascript\">");
			out.println("alert('아이디가 존재하지 않습니다!');");
			//out.println("location='login.jsp';");
			out.println("</script>");
	%>
	<div style="text-align: center;">
		<a>아이디/비밀번호를 확인해주세요!</a><br>
		<a href="findId.jsp">아이디찾기</a>/<a href="findPwd.jsp">비밀번호찾기</a>
	</div>
	<%} %>
</body>
<hr>
<footer>
	<%@ include file="footer.jsp" %>
</footer>
</html>