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
				<a><img alt="iron man" src="/pptest/images/iron man7.jpg" width="130" height="130"></a>
			</div>
			<p>아이언맨 그립톡</p>
			<div>
				<input type="hidden" name="prodnum" value="7">
				<input type="hidden" name="job" value="i">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="captain" src="/pptest/images/cap1.jpg" width="130" height="130"></a>
			</div>
			<p>캡틴 방패 그립톡</p>
			<div>
				<input type="hidden" name="prodnum" value="12">
				<input type="hidden" name="job" value="c">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>