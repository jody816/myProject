<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	h3{
		margin-top: 20px;
		margin-left: 20px;
	}
	.container {
    width: 960px;
    margin-top:20px;
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
<title>Insert title here</title>
</head>
<%@ include file="headerAdmin.jsp" %>
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
<h3>관리자로 로그인하셨습니다!</h3>
	<div class="container">
		<img alt="admin" src="images/admin.jpg" style="float: left; width: 200px; height: 200px;" >
		<nav class="navi">
      		<ul>
        		<li><a href="memberInfo.do">회원 정보 리스트</a></li>
        		<li><a href="orderListAdmin.do">회원 주문 리스트</a></li>
        		<li><a href="logout.do">로그아웃</a></li>
      		</ul>
    	</nav>  
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>