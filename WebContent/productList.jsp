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
    <style>
    	#main-h {
            padding: 10px 5px;
        }

        #main-h h1 {
            font-size: 20px;
            font-weight: normal;
            line-height: 27px;
            color: #222;
            float: right;
            margin-right: 0;
        }

        #main-h ul {
            margin-bottom: 10px;
        }

        #main-h li {
            margin-bottom: 10px;
        }

        #main-h li a {
            color: #555;
        }

        #main-h li.active a {
            color: black;
            font-weight: 500;
        }

        #main-h label {
            text-align: center;
            float: right;
            width: 40px;
            height: 27px;
            line-height: 27px;
            color: #222;
            border: 1px solid #222;
            border-radius: 5px;
        }

        #checkbox {
            display: none;
        }

        #checkbox + nav {
            display: block;
        }

        #checkbox:checked + nav {
            display: none;
        }
    </style>
</head>
<%@ include file="header.jsp" %>
    <div id="main-h">
        <header>
            <div>
                <label for="checkbox">▼</label>
                <h1>Sort&nbsp;→&nbsp;</h1>
            </div>
            <input id="checkbox" checked="checked" type="checkbox">
            <nav>
                <ul>
                    <li><a href="/pptest/cha/iron.jsp">IronMan</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/cha/spider.jsp">SpiderMan</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/cha/cap.jsp">CaptainAmerica</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/cha/hulk.jsp">Hulk</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/cha/panther.jsp">BlackPanther</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/cha/thor.jsp">Thor</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/cha/villain.jsp">Villain</a></li>
                    
                    <li><a href="/pptest/category/case.jsp">Case</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/category/chair.jsp">Chair</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/category/figure.jsp">Figure</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/category/grip.jsp">GripTok</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/category/lego.jsp">Lego</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/category/speaker.jsp">Speaker</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/category/usb.jsp">USB</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/pptest/category/etc.jsp">ETC</a></li>
                </ul>
            </nav>
        </header>
    </div>
<body>
<table>
	<tr>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="iron man" src="images/iron man1-1.jpg" width="130" height="130"></a>
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
				<a><img alt="iron man" src="images/iron man2.jpg" width="130" height="130"></a>
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
				<a><img alt="iron man" src="images/iron man3.jpg" width="130" height="130"></a>
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
				<a><img alt="iron man" src="images/iron man4.jpg" width="130" height="130"></a>
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
				<a><img alt="iron man" src="images/iron man5.jpg" width="130" height="130"></a>
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
				<a><img alt="iron man" src="images/iron man6.jpg" width="130" height="130"></a>
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
				<a><img alt="iron man" src="images/iron man7.jpg" width="130" height="130"></a>
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
				<a><img alt="spider man" src="images/spider man1.jpg" width="130" height="130"></a>
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
				<a><img alt="spider man" src="images/spider man2.jpg" width="130" height="130"></a>
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
				<a><img alt="spider man" src="images/spider man3.jpg" width="130" height="130"></a>
			</div>
			<p>스파이더맨 게이밍 의자</p>
			<div>
				<input type="hidden" name="prodnum" value="10">
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
				<a><img alt="spider man" src="images/spider man4.jpg" width="130" height="130"></a>
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
				<a><img alt="captain" src="images/cap1.jpg" width="130" height="130"></a>
			</div>
			<p>캡틴 방패 그립톡</p>
			<div>
				<input type="hidden" name="prodnum" value="12">
				<input type="hidden" name="job" value="c">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="captain" src="images/cap2.jpg" width="130" height="130"></a>
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
				<a><img alt="captain" src="images/cap3.jpg" width="130" height="130"></a>
			</div>
			<p>캡틴아메리카 에어팟 케이스</p>
			<div>
				<input type="hidden" name="prodnum" value="14">
				<input type="hidden" name="job" value="c">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="captain" src="images/cap4.jpg" width="130" height="130"></a>
			</div>
			<p>캡틴아메리카 향수</p>
			<div>
				<input type="hidden" name="prodnum" value="15">
				<input type="hidden" name="job" value="c">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
	</tr>
	<tr>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="captain" src="images/cap5.jpg" width="130" height="130"></a>
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
				<a><img alt="hulk" src="images/hulk1.jpg" width="130" height="130"></a>
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
				<a><img alt="hulk" src="images/hulk2.jpg" width="130" height="130"></a>
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
				<a><img alt="black panther" src="images/black panther1.jpg" width="130" height="130"></a>
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
				<a><img alt="black panther" src="images/black panther2.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 차량용 USB</p>
			<div>
				<input type="hidden" name="prodnum" value="20">
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
				<a><img alt="black panther" src="images/black panther3.jpg" width="130" height="130"></a>
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
				<a><img alt="black panther" src="images/black panther4-1.jpg" width="130" height="130"></a>
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
				<a><img alt="black panther" src="images/black panther5.jpg" width="130" height="130"></a>
			</div>
			<p>블랙팬서 스피커</p>
			<div>
				<input type="hidden" name="prodnum" value="23">
				<input type="hidden" name="job" value="b">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="black panther" src="images/black panther6.jpg" width="130" height="130"></a>
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
				<a><img alt="black panther" src="images/black panther7-1.jpg" width="130" height="130"></a>
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
	<tr>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="thor" src="images/thor1.jpg" width="130" height="130"></a>
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
				<a><img alt="thor" src="images/thor2.jpg" width="130" height="130"></a>
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
				<a><img alt="thor" src="images/thor3.jpg" width="130" height="130"></a>
			</div>
			<p>묠니르 에어팟 케이스</p>
			<div>
				<input type="hidden" name="prodnum" value="28">
				<input type="hidden" name="job" value="t">		
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
		<td><div>
		<form action="productSearch.do" method="post">
			<div>
				<a><img alt="villain" src="images/bone.jpg" width="130" height="130"></a>
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
				<a><img alt="villain" src="images/thanos1.jpg" width="130" height="130"></a>
			</div>
			<p>타노스 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="30">
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
				<a><img alt="villain" src="images/thanos2.jpg" width="130" height="130"></a>
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
				<a><img alt="villain" src="images/thanos3.jpg" width="130" height="130"></a>
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
				<a><img alt="villain" src="images/ult.jpg" width="130" height="130"></a>
			</div>
			<p>울트론 피규어1</p>
			<div>
				<input type="hidden" name="prodnum" value="33">
				<input type="hidden" name="job" value="v">	
				<input type="submit" value="장바구니/주문">
			</div>
		</form>
	</div></td>
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