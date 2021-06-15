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
				<a><img alt="captain" src="/pptest/images/cap4.jpg" width="130" height="130"></a>
			</div>
			<p>캡틴아메리카 향수</p>
			<div>
				<input type="hidden" name="prodnum" value="15">
				<input type="hidden" name="job" value="c">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
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
				<a><img alt="villain" src="/pptest/images/thanos3.jpg" width="130" height="130"></a>
			</div>
			<p>인피니티 건틀렛 키링</p>
			<div>
				<input type="hidden" name="prodnum" value="32">
				<input type="hidden" name="job" value="v">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>