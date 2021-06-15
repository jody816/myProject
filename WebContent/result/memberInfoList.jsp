<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dev.dto.DTO" %>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h3{
		margin-top: 10px;
		text-align: center;
	}
table{
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
<%@ include file="headerAdmin.jsp" %>
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
	ArrayList<DTO> list = (ArrayList<DTO>) request.getAttribute("list");
	if(!list.isEmpty()) {
%>
	<table>
		<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>전화번호</th><th>주소</th></tr>
		
		<%
			for(int i=0; i<list.size(); i++){
				DTO member = list.get(i);
		%>
				
				<tr><td><%=member.getId()%></td>
					<td><%=member.getPwd()%></td>
					<td><%=member.getName()%></td>
					<td><%=member.getEmail()%></td>
					<td><%=member.getPhone()%></td>
					<td><%=member.getAddress()%></td>
				</tr>
		<% }
	}else{
		out.print("<h3>등록된 회원정보가 없습니다.</h3>");
	}
%>
	</table>

	<a href="/pptest/admin.jsp">관리자 페이지</a>
</body>
<%@ include file="footer.jsp" %>
</html>