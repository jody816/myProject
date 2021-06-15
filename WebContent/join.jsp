<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/join.css">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>
<body>
	<h2>Join</h2>
    <div id="container">
      <form id="join" action="join.do" method="post">
        <fieldset>
          <legend>User Information</legend>    
          <ul type="none">
            <li>
              <label>ID</label>
              <input type="text" name="id" required> 
            </li>
            <li>
              <label>PW</label>
              <input type="password" name="pwd" required> 
            </li>        
            <li>
              <label>NAME</label>
              <input type="text" name="name" required> 
            </li>
            <li>
              <label>EMAIL</label>
              <input type="email" name="email"> 
            </li>
            <li>
              <label>PHONE</label>
              <input type="tel" name="phone"> 
            </li>
            <li>
              <label>ADDRESS</label>
              <textarea name="address" rows="5" cols="33" required>주소를 정확하게 입력해주세요!
              </textarea>
            </li>
          </ul>
          <div id="buttons">
            <input type="submit" value="Join">
            <input type="reset" value="Cancle">
        </div>    
        </fieldset>
      </form>
    </div>
</body>
<%@ include file="footer.jsp" %>
</html>