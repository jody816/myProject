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
				<a><img alt="spider man" src="/pptest/images/spider man1.jpg" width="130" height="130"></a>
			</div>
			<p>스파이더맨 종합 피규어</p>
			<div>
				<input type="hidden" name="prodnum" value="8">
				<input type="hidden" name="job" value="s">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="spider man" src="/pptest/images/spider man2.jpg" width="130" height="130"></a>
			</div>
			<p>스파이더맨 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="9">
				<input type="hidden" name="job" value="s">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="spider man" src="/pptest/images/spider man3.jpg" width="130" height="130"></a>
			</div>
			<p>스파이더맨 게이밍 의자</p>
			<div>
				<input type="hidden" name="prodnum" value="10">
				<input type="hidden" name="job" value="s">	
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
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>