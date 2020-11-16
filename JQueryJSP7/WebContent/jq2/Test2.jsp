<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	*{
		margin: 5px;
		padding: 5px;
		border: 3px solid black;
	}


</style>




<!-- 컴퓨터에 있는 제이쿼리 라이브러리 추가 -->
<script src="../js/jquery-3.5.1.min.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
		
		// 이미지 클릭시 그림을 변경 -> (src 속성값을 변경)
		$('img').click(function(){
			$('img').attr('src','pineapple.jpg');
		});
		
		// 마우스 올라갔을 때 frog.jpg 
		// 마우스 내려갔을 때 원래 이미지 표시
	/* 	$('img').mouseover(function(){
			$(this).attr('src','frog.jpg');
		});
		
		$('img').mouseout(function(){
			$(this).attr('src','cat2.jpg');
		});
		 */
		///////////////////////////////////////////////////////
		
		// 체이닝 기법
		$('img').mouseover(function(){
			$(this).attr('src','frog.jpg');
		}).mouseout(function(){
			$(this).attr('src','cat2.jpg');
		});
		
		// a링트 클릭시 배경색을 파랑으로 변경
		$('a').click(function(event){
			$(this).css('background-color','blue');
			
			// a링크 기본기능 - 하이퍼링크를 막음.(페이지 이동 x)
			//event.preventDefault();
			
			//event.stopPropagation(); - 브라우저에 따라 작동 안할 수 있음.
			
			//return false; : 페이지 이동 X
			//return true; / return;
		});
		
		////////////////////////////////////////////////////////////////
		
		// h2태그 클릭시 + 기호 추가 
		$('h2').click(function(){
			
			//event.preventDefault();
			
			$(this).html(function(index,text){		
				return text + "@";
			});
			
			// 해당 이벤트 종료 
			$(this).unbind(); // 이벤트 연결 끊기
			
			
		});
		
		
		
		
	});


</script>


</head>
<body>

	<h1>WebContent/jq2/Test2.jsp</h1>
	
	<img src="cat2.jpg">
	<img src="cat2.jpg">
	
	
	<hr>
	<h2> 이벤트 막기  </h2>
	
	<a href="http://www.naver.com"> 네이버 </a>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



</body>
</html>