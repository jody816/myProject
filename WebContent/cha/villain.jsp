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
				<a><img alt="villain" src="/pptest/images/bone.jpg" width="130" height="130"></a>
			</div>
			<p>크로스본즈 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="29">
				<input type="hidden" name="job" value="v">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="villain" src="/pptest/images/thanos1.jpg" width="130" height="130"></a>
			</div>
			<p>타노스 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="30">
				<input type="hidden" name="job" value="v">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="villain" src="/pptest/images/thanos2.jpg" width="130" height="130"></a>
			</div>
			<p>타노스 피규어2</p>
			<div>
				<input type="hidden" name="prodnum" value="31">
				<input type="hidden" name="job" value="v">		
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
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="villain" src="/pptest/images/ult.jpg" width="130" height="130"></a>
			</div>
			<p>울트론 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="33">
				<input type="hidden" name="job" value="v">	
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
	<tr>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="villain" src="/pptest/images/venom.jpg" width="130" height="130"></a>
			</div>
			<p>베놈 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="34">
				<input type="hidden" name="job" value="v">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="villain" src="/pptest/images/yellow.jpg" width="130" height="130"></a>
			</div>
			<p>옐로우자켓 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="35">
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