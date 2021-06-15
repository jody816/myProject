<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dev.dto.OrderListDTO" %>
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
	ArrayList<OrderListDTO> list = (ArrayList<OrderListDTO>) request.getAttribute("list");
	if(!list.isEmpty()) {
%>
	<table>
		<tr><th>주문번호</th><th>상품번호</th><th>상품이름</th><th>수량</th><th>주문날짜</th><th>배송상태</th></tr>
		
		<%
		for(int i=0; i<list.size(); i++){
			OrderListDTO order = list.get(i);
		%>
			<tr>
				<td><%=order.getOrdernum()%></td>
				<td><%=order.getProdnum()%></td>
				<td><%=order.getProdname()%></td>
				<td><%=order.getQuantity()%></td>
				<td><%=order.getOrderdate()%></td>
				<td><%=order.getResult()%></td>
			</tr>
		<% }
	}else{
		out.print("<h3>거래내역이 비어있습니다.</h3>");
	}
%>
	</table>
</body>
<%@ include file="footer.jsp" %>
</html>