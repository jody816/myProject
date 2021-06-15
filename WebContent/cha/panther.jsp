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
				<a><img alt="black panther" src="/pptest/images/black panther1.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 상단 피규어</p>
			<div>
				<input type="hidden" name="prodnum" value="19">
				<input type="hidden" name="job" value="b">		
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
				<a><img alt="black panther" src="/pptest/images/black panther3.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 의자왕 피규어</p>
			<div>
				<input type="hidden" name="prodnum" value="21">
				<input type="hidden" name="job" value="b">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="black panther" src="/pptest/images/black panther4-1.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="22">
				<input type="hidden" name="job" value="b">	
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
	<tr>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="black panther" src="/pptest/images/black panther6.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 에어팟 케이스</p>
			<div>
				<input type="hidden" name="prodnum" value="24">
				<input type="hidden" name="job" value="b">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="black panther" src="/pptest/images/black panther7-1.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 게이밍 의자</p>
			<div>
				<input type="hidden" name="prodnum" value="25">
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