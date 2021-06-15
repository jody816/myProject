<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dev.dto.CartDTO" %>
<%@ page import="com.dev.dto.DTO" %>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/join.css">
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
	ArrayList<CartDTO> list = (ArrayList<CartDTO>) request.getAttribute("list");
	if(!list.isEmpty()) {
%>
	<table>
		<tr><th>상품번호</th><th>상품이름</th><th>수량</th></tr>
		
		<%
		for(int i=0; i<list.size(); i++){
			CartDTO cart = list.get(i);
		%>
			<tr>
				<td><%=cart.getProdnum()%></td>
				<td><%=cart.getProdname()%></td>
				<td><%=cart.getQuantity()%></td>
			</tr>
		<% }
	}else{
		out.print("<h3>장바구니가 비어있습니다.</h3>");
	}
%>
	</table>
	
	<div id="container2">
	<form action="cartDelete.do" method="post">
		<fieldset>
			<legend style=font-size:13px>취소할 상품번호를 입력해주세요</legend>
			<ul>
				<li>
				<input type="hidden" name="id" value="${id}">
				상품번호 : <input type="text" name="prodnum" size=3 required>
				<input type="submit" value="취소">
				</li>
			</ul>
		</fieldset>
	</form>
	</div>
	
	<div id="container2">
	<form action="cartSearch.do" method="post">
		<fieldset>
		<legend style=font-size:13px>주문할 상품번호를 입력해주세요</legend>
		<ul>
			<li>
			<input type="hidden" name="id" value="${id}">
			상품번호 : <input type="text" name="prodnum" size=3 required>
			<input type="submit" value="주문">
			</li>
		</ul>
		</fieldset>
	</form>
	</div>
	
	<div id="container2">
	<form action="cartModify.do" method="post">
		<fieldset>
		<legend style=font-size:13px>수량 변경을 원할 시 입력해주세요</legend>
		<ul>
			<li>
			<input type="hidden" name="id" value="${id}">
			상품번호 : <input type="text" name="prodnum" size=3 required><br>
			수량 : <input type="text" name="quantity" size=3 required><br>
			<input type="submit" value="변경">
			</li>
		</ul>
		</fieldset>
	</form>
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>