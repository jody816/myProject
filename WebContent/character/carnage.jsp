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
            width: 128px;
            margin-left: 30px;
            font-size: 10px;
        }
</style>
</head>
<%@ include file="header.jsp" %>
<body>
<div class="paper"> 
	<div class="paper-holder"> 
		<a><img width="190" src="/pptest/images/carnage1.jpg"></a> 
	</div> 
	<p class="paper-description">카니지(클리터스 캐서디만)</p> 
</div>
<div class="paper-content"> 
		<a class="paper-link" href="#"><img src="/pptest/images/carnage2.jpg" style="width: 30px; height: 30px;"></a> 
		<p class="paper-text">이름의 유래는 대학살을 뜻하는 영단어 Carnage. 여러 숙주를 거친 베놈과 달리 카니지는 클리터스 캐서디만을 유일한 숙주로 삼고 있다.

카니지는 미국 만화 역사에서 온갖 자극적인 캐릭터와 스토리가 유행했던 90년대에 탄생했다. 평범한 청년 서민을 상징하는 스파이더맨 시리즈 치고는 하드코어한 설정들을 가지고 있다.

빌런이었다가 안티 히어로로 개과천선한 베놈 - 에디 브록 콤비와 대비되는 모습을 보여준다. 에디와 베놈이 엄청난 떡대와 위엄을 가진 캐릭터라면, 카니지와 캐서디는 날렵하다. 베놈은 비교적 고정된 형태로 고정된 상태에서 팔이나 머리만 변형시키는 반면, 카니지는 작은 촉수들이 전신에서 튀어나와 흘러내리듯이 꿈틀거린다. 또한 베놈과 달리 심비오트로 이루어진 검은 이빨을 가지고 있으나, 가끔씩 베놈처럼 하얀 치아를 보여주기도 한다.</p> 
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>