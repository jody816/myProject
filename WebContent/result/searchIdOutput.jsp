<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container {
        width:450px;
        margin:10px auto;
      }
table{
		margin-top: 10px;
		text-align: center;
		width: 100%;
		border-top: 1px solid #444444;
        border-collapse: collapse;
	}
th, td {
        border-bottom: 1px solid #444444;
        padding: 10px;
        text-align: center;
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
		else{
	%>
	<div id="container">
	<p>'${member.name}'님의 계정 정보입니다!</p>
	
	<table>
		<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>전화번호</th><th>주소</th></tr>
		<tr>
			<td>${member.id}</td>
			<td>${member.pwd}</td>
			<td>${member.name}</td>
			<td>${member.email}</td>
			<td>${member.phone}</td>
			<td>${member.address}</td>
		</tr>
	</table>
	</div>
	<% } %>
</body>
<%@ include file="footer.jsp" %>
</html>