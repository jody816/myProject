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
            background-image: url('images/logo.PNG');
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
                    <a href="myPage.jsp"><img alt="마이페이지" src="images/menu.png" width=30 height=30></a> 
                    <ul class="inner-menu"> 
                        <li><a href="myOrderList.do">주문내역</a></li> 
                        <li><a href="myCartList.do">장바구니</a></li> 
                        <li><a href="memberUpdate.jsp">내 정보 수정</a></li>
                        <li><a href="searchId.jsp">내 정보 보기</a></li>
                        <li><a href="deleteId.jsp">회원 탈퇴</a></li>
                    </ul> 
                </li> 
            </ul> 
        </div>
        <a href="main.jsp"><h1 class="header-title">MARVEL</h1></a>
        <div class="header-member">
        <% if(session.getAttribute("id") == null){%>
        	<a href="login.jsp">[Login]</a>
        	/
        	<a href="join.jsp">[Join]</a>
        <%}else{ %>
        	Hello! '${id}' / <a href="logout.do">[Logout]</a>
        	<%} %>
        </div>
    </header>
     <nav id="main-navigation"> 
        <ul> 
            <li><a href="movie.jsp">MCU</a></li> 
            <li><a href="productList.jsp">GOODS</a></li> 
            <li><a href="character/allChar.jsp">CHARACTERS</a></li> 
        </ul> 
    </nav> 
</body>
</html>