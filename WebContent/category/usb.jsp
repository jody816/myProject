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
				<a><img alt="iron man" src="/pptest/images/iron man3.jpg" width="130" height="130"></a>
			</div>
			<p>아이언맨 USB</p>
			<div>
				<input type="hidden" name="prodnum" value="3">
				<input type="hidden" name="job" value="i">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="captain" src="/pptest/images/cap5.jpg" width="130" height="130"></a>
			</div>
			<p>캡틴 방패 USB</p>
			<div>
				<input type="hidden" name="prodnum" value="16">
				<input type="hidden" name="job" value="c">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="black panther" src="/pptest/images/black panther2.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 차량용 USB</p>
			<div>
				<input type="hidden" name="prodnum" value="20">
				<input type="hidden" name="job" value="b">		
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
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>