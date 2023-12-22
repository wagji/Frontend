<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSP 에서 , java.sql 패키지의 하위 모든 클래스를 import
			java.util 패키지의 하위 모든 클래스를 import 
 -->
<%@ page import = "java.sql.*, java.util.*" %>

<!-- 클라이언트에서 넘어오는 한글이 깨어지지 않게 처리  -->
<%  request.setCharacterEncoding("UTF-8");  %>

<%@ include file="../db_conn/db_conn_Oracle.jsp" %>


<!-- 클라이언트에서 넘어오는 값을 받아서 출력 : request 객체  -->
<% 
	// http://localhost:8181/JSP_PROJ/guestboard/save.jsp?name=gildong&email=aaa%40aaa.com&subject=aa&contents=bb
	//  파라미터 :  ?변수명=값&변수명=값&변수명=값
	//  파라미터로 넘어오는 값은 모두 String    
	
	String na = request.getParameter("name"); 
	String em = request.getParameter("email"); 
	String sub = request.getParameter("subject"); 
	String cont = request.getParameter("content"); 
	
%>
<!--  preparedstatement 객체를 사용하여  -->


<%  String sql = null ;
	PreparedStatement  pstmt = null;

	sql =" insert into guestboard ( name, email,subject, content ) " ;
	sql = sql  + "  values (?,?,?,? )" ;

	out.println (sql) ;

	//stnt 를 사용해서 db 에 값을 insert 
	pstmt = conn.prepareStatement(sql);
	
	
	try {
		
	 pstmt.setString(1,na);  // 데이타베이스에 저장 완료 
		 pstmt.setString(2,em);  // 데이타베이스에 저장 완료 
		 pstmt.setString(3,sub);  // 데이타베이스에 저장 완료 
		 pstmt.setString(4,cont);  // 데이타베이스에 저장 완료 
		 
		 pstmt.executeUpdate();  //Date base 에 저장완료 
		 
		 
	}catch (Exception e )
	{
		e.printStackTrace();
		out.println ( " DB 저장에 실패 했습니다. ") ;	
	}

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  변수에 담긴값을 출력  -->
	<h2> 넘어오는 변수 값 출력 </h2>
	<%= na %> <br> 
	<%= em %> <br>
	<%= sub %> <br> 
	<%= cont %> <br> 

<h1>statement</h1>

</body>


<h1> Preparedstatement</h1>



</html>