<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
p{
	font-size: 10px;
}
div{
	margin-top: 10px;
}
table{
	margin : auto;
	text-align: center;
}
</style>
</head>
<%@ include file="header.jsp" %>
<body>
<table>
	<tr>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="hulk" src="/pptest/images/hulk1.jpg" width="130" height="130"></a>
			</div>
			<p>헐크 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="17">
				<input type="hidden" name="job" value="h">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="hulk" src="/pptest/images/hulk2.jpg" width="130" height="130"></a>
			</div>
			<p>헐크 피규어2</p>
			<div>
				<input type="hidden" name="prodnum" value="18">
				<input type="hidden" name="job" value="h">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>