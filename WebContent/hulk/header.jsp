<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
        * {
            margin: 0; padding: 0;
            font-family: 'Malgun Gotic', sans-serif;
        }

        a { text-decoration: none; }
        img { border: 0; }
        li { list-style: none; }
    </style>
    <!-- 헤더 -->
    <style>
        #main-header {
            height: 40px;
            background: #fff;

            position: relative;
        }

        .header-title {
            position: absolute;
            width: 100px; height:  40px;
            left: 55%; margin-left: -100px;
            background-image: url('/pptest/images/logo.PNG');
            background-size: 99px;
            background-repeat: no-repeat;

            text-indent: -9999px;
        }

        .header-menu {
            float: left;
        }
        
        .header-member{
        	float: right;
        	margin-top: 10px;
        	margin-right: 10px;
        	font-size: 13px;
        }
    </style>
    <!-- 드롭다운 -->
    <style>
        .outer-menu {
            float: left;
            width: 100px; height: 20px;
            line-height: 20px;
            padding: 5px 10px;
            position: relative;
            text-align: left;
            font-size: 13px;
            font-weight: bold;
            z-index: 9999;
        }

        .inner-menu {
            display: none;
            background: #FFFFFF;
            margin-top: 10px;
            width: 100%;

            border-top: 1px solid #cccaca;
            box-shadow: 0 2px 4px rgba(34,25,25,0.5);
        }

        .inner-menu a {
            display: block;
            padding: 5px 10px;
            z-index: 5000;
        }

        .inner-menu a:hover { background: #E1DFDF; }
    </style>
    <style>
        #main-navigation {
            height: 30px;
            background: #fff;
            border-top: 1px solid #cfcaca;
            box-shadow: 1px 3px 3px rgba(34, 25, 25, 0.4);
        }

        #main-navigation > ul {
            overflow:hidden;
            text-align: center;
        }

        #main-navigation > ul > li {
            display: inline;

            padding: 0 5px;

            line-height: 30px;
            font-size: 13px;
            color: #524D4D;
            text-shadow: 0 1px 1px white;
        }

        #main-navigation > ul > li:hover { 
            background: #E1DFDF;
            border-radius: 2px;
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
 	<script>
        // 풀다운 메뉴
        $(document).ready(function () {
            // 풀다운 메뉴
            $('.outer-menu').hover(function () {
                $(this).find('.inner-menu').css('display', 'block');
            }, function () {
                $(this).find('.inner-menu').css('display', 'none');
            });
        });
     </script>
</head>
<body>
 <header id="main-header"> 
        <div class="header-menu"> 
            <ul class="outer-menu"> 
                <li> 
                    <a href="/pptest/myPage.jsp"><img alt="마이페이지" src="/pptest/images/menu.png" width=30 height=30></a> 
                    <ul class="inner-menu"> 
                        <li><a href="myOrderList.do">주문내역</a></li> 
                        <li><a href="myCartList.do">장바구니</a></li> 
                        <li><a href="/pptest/memberUpdate.jsp">내 정보 수정</a></li>
                        <li><a href="/pptest/searchId.jsp">내 정보 보기</a></li>
                        <li><a href="/pptest/deleteId.jsp">회원 탈퇴</a></li>
                    </ul> 
                </li> 
            </ul> 
        </div>
        <a href="/pptest/main.jsp"><h1 class="header-title">MARVEL</h1></a>
        <div class="header-member">
        <% if(session.getAttribute("id") == null){%>
        	<a href="/pptest/login.jsp">[Login]</a>
        	/
        	<a href="/pptest/join.jsp">[Join]</a>
        <%}else{ %>
        	Hello! '${id}' / <a href="logout.do">[Logout]</a>
        	<%} %>
        </div>
    </header>
     <nav id="main-navigation"> 
        <ul> 
            <li><a href="/pptest/movie.jsp">MCU</a></li> 
            <li><a href="/pptest/productList.jsp">GOODS</a></li> 
            <li><a href="/pptest/character/allChar.jsp">CHARACTERS</a></li> 
        </ul> 
    </nav>
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
</body>
</html>