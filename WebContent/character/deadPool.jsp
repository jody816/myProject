<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .paper {
            width: 253px;
            margin-top: 25px;
            margin-left: 18%;
            padding: 15px 15px 0;
            font-size: 11px;
            background: #FFFFFF;
            box-shadow: 0 1px 3px rgba(34, 25, 25, 0.4);
            float: left;
        }

        .paper-content {
            margin: 0 -15px;
            margin-top: 10px;
            margin-left:0px;
            padding: 10px 15px;
            background: #F2F0F0;
			float: left;
			width: 300px;
            overflow: hidden;
        }

        .paper-description {
            margin: 10px 0;
        }

        .paper-link {
            display: block;
            float: left;
        }

        .paper-text {
            float: left;
            width: 137px;
            margin-left: 30px;
            font-size: 10px;
        }
</style>
</head>
<%@ include file="header.jsp" %>
<body>
<div class="paper"> 
	<div class="paper-holder"> 
		<a><img width="250" src="/pptest/images/deadpool1.jpg"></a> 
	</div> 
	<p class="paper-description">데드풀(웨이드 윌슨)</p> 
</div>
<div class="paper-content"> 
		<a class="paper-link" href="#"><img src="/pptest/images/deadpool2.jpg" style="width: 30px; height: 30px;"></a> 
		<p class="paper-text">이명은 데드풀. 캐나다 출신의 용병이다. 첫 등장시에는 케이블의 엑스포스를 습격하는 용병으로 등장했으나, 이어지는 연재에서 영웅이 되려고 애쓰지만 맘처럼 되지 않는 안티히어로의 이미지로 굳어진다. 원래는 아무런 능력도 없었으나 뇌에 생긴 악성종양을 치료하기 위해 웨폰X 프로젝트에 자원해서 울버린의 힐링 팩터 능력을 이식받는다. 하지만 수술은 실패했다. 힐링 팩터 이식은 성공해서 회복 능력을 얻었지만, 동시에 암이 온 몸으로 퍼져 온몸이 추하게 뒤틀리고 정신도 온전하지 못하게 됐다.</p> 
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>