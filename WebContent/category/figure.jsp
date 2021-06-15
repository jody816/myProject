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
	</tr>
	<tr>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="captain" src="/pptest/images/cap2.jpg" width="130" height="130"></a>
			</div>
			<p>캡틴아메리카 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="13">
				<input type="hidden" name="job" value="c">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
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
	</tr>
	<tr>
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
				<a><img alt="villain" src="images/venom.jpg" width="130" height="130"></a>
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
				<a><img alt="villain" src="images/yellow.jpg" width="130" height="130"></a>
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