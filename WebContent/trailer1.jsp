<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h3{
		margin-top: 10px;
		text-align: center;
	}
table{
		text-align: center;
		width: 100%;
		border-top: 1px solid #444444;
        border-collapse: collapse;
	}
	
th, td {
        border-bottom: 1px solid #444444;
        padding: 10px;
        text-align: center;
      }
</style>
</head>
<%@ include file="header.jsp" %>
<body>
<table>
	<tr>
		<td><iframe src='${trailer.video}'></iframe></td>
	</tr>
	<tr>
		<td><h3>${trailer.vname}</h3></td>
	</tr>
	<tr>
		<td>배우 : ${trailer.vactor}</td>
	</tr>
	<tr>
		<td>개봉일 : ${trailer.vopen}</td>
	</tr>
	<tr>
		<td>장르 : ${trailer.vgenre}</td>
	</tr>
</table>
</body>
<%@ include file="footer.jsp" %>
</html>