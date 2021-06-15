<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/pptest/css/product.css">
</head>
<%@ include file="header.jsp" %>
<body>
	<div id="container">
		<h1 id="heading">블랙팬서 에어팟 케이스</h1>
		<div id="prod-pic">
			<img src="/pptest/images/black panther6.jpg" alt="블랙팬서 에어팟 케이스" id="cup" width="200" height="200">
			<div id="small-pic"> 
				<img src="/pptest/images/black panther6.jpg" class="small">
				<img src="/pptest/images/black panther6-1.jpg" class="small">
				<img src="/pptest/images/black panther6-2.jpg" class="small">
	 	  </div>
		</div>			
		<div id="desc">
			<form action="/pptest/cartInsert.do" method="post">
				<ul>
					<li>◆ 상품명 : ${product.prodname}</li>
					<li class="bluetext">◆ 판매가 : ${product.price}원</li>
					<li>◆ 배송비 : 3,000원<br></li>
					<li>◆ 상품설명 : ${product.content}</li>
					<li>◆ 캐릭터 : ${product.cha}</li>
					<li>◆ 카테고리 : ${product.category}</li>
					<li>◆ 수량 : <input type="text" name="quantity" placeholder="수량을 입력해주세요." required/></li>				
				</ul>
				<input type="hidden" name="id" value="${id}">
				<input type="hidden" name="prodnum" value="${product.prodnum}">
				<input type="hidden" name="prodname" value="${product.prodname}">
				<button type="submit">장바구니 담기</button>
			</form>								
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
	<script>
		var cup = document.querySelector("#cup");
    var smallPics = document.querySelectorAll(".small");
      
    for(let i = 0; i < smallPics.length; i++) {
      smallPics[i].addEventListener("click", changePic);
    }

    function changePic() {
      var newPic = this.src;
      cup.setAttribute("src", newPic);
    }
    
    
    $(document).ready(function () {
        // 이벤트를 연결합니다.
        $('button').click(function () {
            // 간단한 효과를 적용합니다.
            $('.page').fadeToggle('slow');
        });
    });
	</script>
</body>
<%@ include file="footer.jsp" %>
</html>