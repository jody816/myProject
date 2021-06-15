<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .paper {
            width: 190px;
            margin-top: 10px;
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
            width: 140px;
            margin-left: 30px;
            font-size: 10px;
        }
</style>
</head>
<%@ include file="header.jsp" %>
<body>
<div class="paper"> 
	<div class="paper-holder"> 
		<a><img width="190" src="/pptest/images/spiderman1.jpg"></a> 
	</div> 
	<p class="paper-description">스파이더맨(피터 파커)</p> 
</div>
<div class="paper-content"> 
		<a class="paper-link" href="#"><img src="/pptest/images/spiderman2.jpg" style="width: 30px; height: 30px;"></a> 
		<p class="paper-text">스파이더맨은 여러 가지 놀라운 능력을 보유하고 있으며, 그 능력들은 시대에 따라 조금씩 변천을 겪었으나, 대표적으로 힘, 스피드와 같은 육체적 능력, 벽 타기, 스파이더 센스, 거미줄 발사, 이렇게 네 가지로 요약할 수 있다. 괴력과 벽 타기, 스파이더 센스가 방사능 거미에게 물려서 얻게 된 초능력이라면, 거미줄 발사는 웹 슈터라고 하는 도구를 활용하는 능력으로 이는 피터 파커가 가진 과학적인 재능을 바탕으로 만든 장치다. 이렇게 스파이더맨은 초능력과 도구를 접목시킨 캐릭터로서, DC의 캐릭터와 비교한다면, 초능력을 주무기로 사용하는 슈퍼맨(Superman)과 자신이 발명한 도구들을 주무기로 사용하는 휴먼히어로인 배트맨(Batman)이 가진 개성을 균형있게 잘 접목시킨 인물이라고 볼 수 있다.</p> 
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>