<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<!-- 컴퓨터에 있는 제이쿼리 라이브러리 추가 -->
<script src="../js/jquery-3.5.1.min.js"></script>


<script type="text/javascript">

	$(document).ready(function(){
		
		//*******************************************************************************
		
		$('h2').click(function(){
			$(this).next().toggle('slow',function(){
				alert("효과 끝!!");
			});
		});
		// 콜백 함수 : 적용하려고하는 효과가 모두 실행된 후(100%)
		// 그 다음 실행되는 함수 
		
		
		//*******************************************************************************
		
		// 버튼 1, 버튼2 를 클릭할 때 이미지 상태 변경하기
		$('#btn1').click(function(){
			//해당 요소를 1초 동안에 숨기고, 콜백함수를 호출
			// hide(속도,콜백함수)
			// [속도: "fast", "normal","slow",1/1000초]
			$('img').hide(1000,function(){
				alert('END');
			});
		});
		
		$('#btn2').click(function(){
			//해당 요소를 1초 동안에 보여주고, 콜백함수를 호출
			// show(속도,콜백함수)
			// [속도: "fast", "normal","slow",1/1000초]
			$('img').show(1000,function(){
				alert('END');
			});
		});
		
		//*******************************************************************************
		
		// on("이벤트종류", 실행코드) - 이벤트 처리 
		$('#btn3').on("click",function(){
			$('img').fadeIn("slow");
		});
		
		
		
		$('#btn4').on("click",function(){
			$('img').fadeOut("slow");
		});
		
		$('#btn5').on("click",function(){
			$('img').fadeToggle("slow");
		});
		
		$('#btn6').on("click",function(){
			$('img').slideUp("slow");
		});
		
		$('#btn7').on("click",function(){
			$('img').slideDown("slow");
		});
		
		$('#btn8').on("click",function(){
			$('img').slideToggle("slow");
		});
		
		$('#btn9').on("click",function(){
			// 해당 요소의 투명도를 지정 (0~1 값으로 표현)
			$('img').fadeTo("slow",0.5);
		});
		
		
	});
	
	
	
// innerfade 검색해서 다운받기



</script>

</head>
<body>
	<h1>WebContent/jq2/Test5.jsp</h1>
	
	
	<h2> 메뉴 1 </h2>
	<div>
		<h3> 제목1 </h3>
		<p> 본문1 </p>
	
	</div>
	
	<hr>
	
	<input type="button" id="btn1" value="버튼1(Hide)">
	<input type="button" id="btn2" value="버튼2(Show)">
	
	<hr>
	<img  src="cat3.jpg" width="400" height="400">
	<hr>
	
	<input type="button" id="btn3" value="버튼3(fadeIn)">
	<input type="button" id="btn4" value="버튼4(fadeOut)">
	<input type="button" id="btn5" value="버튼5(fadeToggle)">
	
	
	
	<input type="button" id="btn6" value="버튼6(slideUp)">
	<input type="button" id="btn7" value="버튼7(slideDown)">
	<input type="button" id="btn8" value="버튼8(slideToggle)">
	<hr>
	
	<input type="button" id="btn9" value="버튼9(fadeTo)">
	
	
	
	<hr>
	
	<img src="pineapple.jpg">
	
	
	
	
	
	
</body>
</html>