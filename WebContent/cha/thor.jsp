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
				<a><img alt="thor" src="/pptest/images/thor1.jpg" width="130" height="130"></a>
			</div>
			<p>묠니르 키링</p>
			<div>
				<input type="hidden" name="prodnum" value="26">
				<input type="hidden" name="job" value="t">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="thor" src="/pptest/images/thor2.jpg" width="130" height="130"></a>
			</div>
			<p>묠니르 USB</p>
			<div>
				<input type="hidden" name="prodnum" value="27">
				<input type="hidden" name="job" value="t">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="thor" src="/pptest/images/thor3.jpg" width="130" height="130"></a>
			</div>
			<p>묠니르 에어팟 케이스</p>
			<div>
				<input type="hidden" name="prodnum" value="28">
				<input type="hidden" name="job" value="t">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>