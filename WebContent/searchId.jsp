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
	<form action="searchId.do" method="post">
	<h3>내 정보 보기</h3>
	<h6>본인 아이디를 입력해주세요.</h6>
		ID : <input type="text" name="sid"><br>
		<input type="hidden" name="id" value="id">
		<input type="hidden" name="job" value="search">
		<input type="submit" value="send">
	</form>
	<%
		String result = (String)request.getAttribute("result");
		String msg = (String)request.getAttribute("msg");
		String id = (String)request.getAttribute("id");
		String sid = (String)request.getAttribute("sid");
		if(result != null){
			out.print(result);
		}else if(msg != null){
			out.print(msg);
		}
	%>
</body>
<%@ include file="footer.jsp" %>
</html>