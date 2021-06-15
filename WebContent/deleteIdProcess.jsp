<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form{
	text-align: center;
	padding: 20px;
}
</style>
</head>
<%@ include file="header.jsp" %>
<body>
	<%
	if(session.getAttribute("id") == null)
	{
	   out.println("<script type=\"text/javascript\">");
	   out.println("alert('로그인이 필요합니다!');");
	   out.println("location='login.jsp';");
	   out.println("</script>");
	}
	%>
	<p>'${member.id}'를 삭제하려면 아이디, 패스워드, 이름을 입력해주세요.
	<form action="deleteId.do" method="post">
		<h6>빠이~</h6>
		ID : <input type="text" name="id" required/><br>
		PWD : <input type="password" name="pwd" required/><br>
		NAME : <input type="text" name="name" required/><br>
		<button type="submit">탈퇴하기</button>
	</form>
</body>
<%@ include file="footer.jsp" %>
</html>