<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	div{
		width: 50px;
		height: 50px;
		background-color: orange;
	}

	h2{
		width: 70px;
		height: 30px;
		background-color: pink;
	}
	
	h3{
		width: 50px;
		height: 30px;
		background-color: yellow;
	}

	h4{
		width: 50px;
		height: 30px;
		background-color: skyblue;
	}


</style>




<!-- 컴퓨터에 있는 제이쿼리 라이브러리 추가 -->
<script src="../js/jquery-3.5.1.min.js"></script>

<script type="text/javascript">


	// animate(속성, 속도, 콜백함수)



	$(document).ready(function(){
		
		// 해당 대상을 클릭 했을 때 
		// 속성값 (가로, 세로 크기)을 변경
		$('div').click(function(){
			// 가로세로 크기 출력
			var w = $(this).css('width');
			var h = $(this).css('height');
			
			//alert("W : "+w + ", h : "+h);
			
			// 기존의 크키보다 5px 증가 
			//$(this).css('width', parseInt(w)+5);
			//$(this).css('height', parseInt(h)+5);
			
			
			$(this).animate({
				width: parseInt(w)+25,
				height: parseInt(h)+25
			}, 'slow');
			
		});
		
		//***************************************************************************************************	
		
		// 페이지 실행시 태그 이동- 움직이는 것이 아니라 여백을 주는 것이다.
		$('h2').animate(
			{marginLeft: "200px"},
			5000,
			function(){
				alert("이동 완료");
			}
		);
		
		// h3 - 왼쪽여백 150px 지정, 가로길이 100px, 5초
		// + 1초 기다렸다가 실행 
		$('h3').delay(1000).animate(
			{marginLeft: "150px",
				width: "100px"},
			5000
		);
		
		// h4 - 요소가 오른쪽으로 이동했다가 왼쪽으로 이동
		// 위에랑 같은 시간동안 오른쪽갔다가 왼쪽 가려고 시간 빠르게지정
		// 다시 돌아가려면 여백으로 지정하기!
		$('h4').animate({marginLeft: "200px"},1000)
			   .animate({marginLeft: "100px"},1000)
			   .animate({marginLeft: "200px"},1000)
			   .animate({marginLeft: "100px"},1000)
			   .animate({marginLeft: "200px"},1000); 
		
		// 정지 버튼 클릭시 
		// 애니메이션 정지 
		$('#btn').click(function(){
			// => stop() - 해당 애니메이션 하나를 종료 
			//$('h2').stop();
			//$('h3').stop();
			//$('h4').stop(); // 애니메이트 여러개 걸려있기 때문에 버튼 한번 누를 때 하나의 애니메이트 정지하고 나머지는 움직임.
			
			// => clearQueue() - 애미메이션 큐에 있는 모든 동작을 제거 
			//$('h4').clearQueue();
			
			// finish() - 효과를 모두 처리하지 않고 가장 마지막 결과만 보여줌
			$('h4').finish();
			
		});
		
		
		
		
		
		
		
		
	});
	
</script>

</head>
<body>

	<h1>WebContent/jq2/Test7.jsp</h1>

	<div></div>
	
	
	<h2>내용1</h2>
	<h3>내용2</h3>
	<h4>내용3</h4>

	<input type="button" value="정지" id="btn">
	
	
	





















</body>
</html>