<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
	/* <h1>WebContent/jq3/Json3.jsp</h1>
	
	// DB정보를 jsp페이지로 불러와서 Jsp정보를 json.html로  출력
	
	<h1> DB데이터를 불러와서 JSON형태로 변경해서 출력 </h1>
 */
		final String DRIVER="com.mysql.jdbc.Driver";
  		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
  		final String DBID = "root";
  		final String DBPW = "1234";

		// 1. 드라이버로드
		Class.forName(DRIVER);
	
		// 2. 디비연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		
		// 3. sql 작성 & pstmt 객체 생성(select * )
		String sql = "select * from itwill_member";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// 4. sql 실행
		ResultSet rs = pstmt.executeQuery();
		
		// ArrayList 생성 -> 자바빈 객체 하나를 저장 -> 행 1줄 저장 
		// ArrayList 한칸 저장 <- 자바빈 객체 하나를 저장 <- 행 1줄 저장
		// 원래 하던것
		
		// JSONArray 한칸 저장 <- JSONObject 객체 하나를 저장 <- 행 1줄 저장
		
		// JSONArray 생성
		JSONArray arr = new JSONArray();
		
		// 5. rs 데이터 처리
		while(rs.next()){
			
			// JSONObject 생성
			JSONObject obj = new JSONObject();
			
			obj.put("id", rs.getString("id"));
			obj.put("name", rs.getString("name"));
			obj.put("email",rs.getString("email"));
			
			// 배열 한칸에 객체 하나를 저장 
			arr.add(obj);
		}
		
	%>
	
	<%=arr %>
	
	
	
	
	

