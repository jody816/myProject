<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/character.css">
</head>
<%@ include file="header.jsp" %>
<body>
<div id="container">
		<ul class="prod-list">
      <li>
        <img src="images/t1.jfif">
        <div class="caption">
          <h2>블랙 위도우</h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>트레일러 보러가기</p>
        </div>
  		<form action="trailer.do" method="post">
  			<input type="hidden" name="trailnum" value="1">
  			<input type="submit" value="&nbsp;→&nbsp;">
  		</form>
      </li>
      <li>
        <img src="images/t3.jfif">
        <div class="caption">
          <h2>베놈2</h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>트레일러 보러가기</p>
        </div>
  		<form action="trailer.do" method="post">
  			<input type="hidden" name="trailnum" value="2">
  			<input type="submit" value="&nbsp;→&nbsp;">
  		</form>
      </li>
      <li>
        <img src="images/t2.jfif">
        <div class="caption">
          <h2>스파이더맨3</h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>티저 보러가기</p>
        </div>
  		<form action="trailer.do" method="post">
  			<input type="hidden" name="trailnum" value="3">
  			<input type="submit" value="&nbsp;→&nbsp;">
  		</form>
      </li>
      	</ul>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>