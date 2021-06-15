<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h2 {
        padding: 10px;
        background-color: #222;
        color: #fff;
      }
  .container {
    width: 960px;
    text-align: center;
  }
  .navi{
    width:960px;
    height:60px;
    padding-bottom:10px;
    border:2px solid #ccc;
  }
  .navi ul{
    list-style: none;
    padding-top:10px; 
    padding-bottom:5px;
  }
  .navi ul li {
    float:left;
    width:150px;
    padding:10px;   
  }
  .navi a:link, .navi a:visited{
    display:block;
    font-size:14px;
    color:#000;
    padding: 10px; 
    text-decoration: none;
    text-align: center;
  }
  .navi a:hover,  .navi a:focus {
    background-color:#222;
    color:#fff;
  }
  .navi a:active {
    background-color:#f00;
  }
</style>
</head>
<%@ include file="header.jsp" %>
<body>
	<%
	if(session.getAttribute("id") == null)
	{
	   out.println("<script type=\"text/javascript\">");
	   out.println("alert('로그인이 필요합니다!');");
	   out.println("location='login.jsp';");
	   out.println("</script>");
	}
	%>
	<h2>My&nbsp;Page</h2>
	<div class="container">
		<nav class="navi">
      		<ul>
        		<li><a href="myOrderList.do">주문 내역</a></li>
        		<li><a href="myCartList.do">장바구니</a></li>
        		<li><a href="memberUpdate.jsp">정보 수정</a></li>
        		<li><a href="searchId.jsp">정보 보기</a></li>
        		<li><a href="deleteId.jsp">회원 탈퇴</a></li>
      		</ul>
    	</nav>  
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>