<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dev.dto.OrderListDTO" %>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<style>
form{
	text-align: center;
	padding: 20px;
}
</style>
<title>Insert title here</title>
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
	ArrayList<OrderListDTO> list = (ArrayList<OrderListDTO>) request.getAttribute("list");
	if(!list.isEmpty()) {
%>
	<table>
		<tr><th>주문번호</th><th>주문고객</th><th>상품번호</th><th>상품명</th><th>수량</th><th>주문날짜</th><th>배송상태</th></tr>
		
		<%
			for(int i=0; i<list.size(); i++){
				OrderListDTO order = list.get(i);
		%>
				
				<tr><td><%=order.getOrdernum()%></td>
					<td><%=order.getId()%></td>
					<td><%=order.getProdnum()%></td>
					<td><%=order.getProdname()%></td>
					<td><%=order.getQuantity()%></td>
					<td><%=order.getOrderdate()%></td>
					<td><%=order.getResult()%></td>
				</tr>
		<% }
	}else{
		out.print("<h3>등록된 주문정보가 없습니다!</h3>");
	}
%>
	</table>
	
	<form action="orderListComplete.do" method="post">
		<h6>상품을 배송했으면 해당 주문리스트의 주문번호를 입력해주세요.</h6>
		주문번호 : <input type="text" name="ordernum" required>
		<input type="submit" value="확인">
	</form>

	<a href="/pptest/admin.jsp">관리자 페이지</a>
</body>
<%@ include file="footer.jsp" %>
</html>