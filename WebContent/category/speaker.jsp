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
				<a><img alt="iron man" src="/pptest/images/iron man6.jpg" width="130" height="130"></a>
			</div>
			<p>헐크버스터 스피커</p>
			<div>
				<input type="hidden" name="prodnum" value="6">
				<input type="hidden" name="job" value="i">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="spider man" src="/pptest/images/spider man4.jpg" width="130" height="130"></a>
			</div>
			<p>스파이더맨 스피커</p>
			<div>
				<input type="hidden" name="prodnum" value="11">
				<input type="hidden" name="job" value="s">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="black panther" src="/pptest/images/black panther5.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 스피커</p>
			<div>
				<input type="hidden" name="prodnum" value="23">
				<input type="hidden" name="job" value="b">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>