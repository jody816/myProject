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
	<h3 style="text-align: center;">내 정보 수정</h3>
	<form action="memberUpdate.do" method="post">
		ID : <input type="text" name="id" readonly value="${member.id}"><br>
		Password : <input type="password" name="pwd" value="${member.pwd}"><br>
		Name : <input type="text" name="name" value="${member.name}"><br>
		Email : <input type="email" name="email" value="${member.email}"><br>
		Phone : <input type="text" name="phone" value="${member.phone}"><br>
		Address : <input type="text" name="address" value="${member.address}"><br>
		<input type="submit" value="Update">
	</form>
</body>
<%@ include file="footer.jsp" %>
</html>