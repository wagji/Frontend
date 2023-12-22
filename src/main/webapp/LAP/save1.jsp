<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
    
    <%@page import = " java.sql.*, java.util.*" %>
    
    <%request.setCharacterEncoding("UTF-8"); %>
    <%@include file ="../db_conn/db_conn_Mssql.jsp" %>
 
 <%
 
 String na= request.getParameter("name");
 String ag= request.getParameter("age");
 String wg= request.getParameter("weight");
 String ad= request.getParameter("addr");
 String po= request.getParameter("phone");
 
 
 %>    
 <%
 String sql= null;
 Statement stmt = null;
 sql = "insert into mem(name,age,weight,addr,phone)" ;
 sql = sql + " values(' " +na +" ' ,' "+ag+ " ' ,'" +wg+ "' ,'"+ad+" ', '"+po+" ' ) " ;
 
 out.println (sql) ;
 stmt = conn.createStatement();
 
 try {
	 
	 stmt.execute(sql)  ;
	 
 }catch (Exception e ) {
	 e.printStackTrace();
	 out.println ("DB 저장에 실패 했습니다 . ") ;
	 
 }
 		 
 
 
 
 %>
 
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>