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
				<a><img alt="iron man" src="/pptest/images/iron man1-1.jpg" width="130" height="130"></a>
			</div>
			<p>아이언맨 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="1">
				<input type="hidden" name="job" value="i">
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="iron man" src="/pptest/images/iron man2.jpg" width="130" height="130"></a>
			</div>
			<p>아이언맨 피규어2</p>
			<div>
				<input type="hidden" name="prodnum" value="2">
				<input type="hidden" name="job" value="i">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
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
				<a><img alt="iron man" src="/pptest/images/iron man4.jpg" width="130" height="130"></a>
			</div>
			<p>아이언맨 LEGO</p>
			<div>
				<input type="hidden" name="prodnum" value="4">
				<input type="hidden" name="job" value="i">	
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="iron man" src="/pptest/images/iron man5.jpg" width="130" height="130"></a>
			</div>
			<p>헐크버스터 피규어</p>
			<div>
				<input type="hidden" name="prodnum" value="5">
				<input type="hidden" name="job" value="i">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
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
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>