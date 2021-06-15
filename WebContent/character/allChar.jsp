<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/pptest/css/character.css">
</head>
<%@ include file="header.jsp" %>
<body>
<div id="container">
		<ul class="prod-list">
      <li>
        <img src="/pptest/images/ironman.jpg">
        <div class="caption" OnClick="window.location.href='ironMan.jsp'">
          <h2>아이언맨</h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>소개 보러가기</p>
        </div>
      </li>
      <li>
		<img src="/pptest/images/spiderman.jpg">
        <div class="caption" OnClick="window.location.href='spiderMan.jsp'">
          <h2>스파이더맨</h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>소개 보러가기</p>
        </div>
      </li>
      <li>
        <img src="/pptest/images/deadpool.jpg">
        <div class="caption" OnClick="window.location.href='deadPool.jsp'">
          <h2>데드풀</h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>소개 보러가기</p>
        </div>
      </li>
      <li>
        <img src="/pptest/images/carnage.jpg">
        <div class="caption" OnClick="window.location.href='carnage.jsp'">
          <h2>카니지</h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>소개 보러가기</p>
        </div>
      </li>
    </ul>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>