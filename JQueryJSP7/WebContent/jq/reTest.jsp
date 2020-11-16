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
	
		
		$('input').bind("click mouseover",function(){
			alert("제이쿼리 크릭");
		});
		
		
		
		
	});
		
		
		
		
		
		
		




</script>


</head>
<body>

		<h1>WebContent/jq2/Test1.jsp</h1>
	
	<input type="button" value="버튼(자바스크립트 사용)" onclick="alert('버튼클릭');">
	
	
	<h2> head-0 </h2>
	<h2> head-1 </h2>
	<h2> head-2 </h2>









</body>
</html>