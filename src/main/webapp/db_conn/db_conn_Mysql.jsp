<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@page import = " java.sql.* " %>
    
    <%
      
    Connection conn = null ;
    
      String driver ="com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localhost:3306/mydb";
      
       try  {
    	   Class.forName(driver);
    	   conn= DriverManager.getConnection(url,"root","1234") ;
    	   
    	   out.println ("성공적으로 접속 했습니다 .  - mySQL" ) ;
    	   
    	   
       }catch  (Exception e ) {
    	   
    	   out.println (" 접속  실패 했습니다 .  - mySQL" ) ;
          e.printStackTrace() ;
          
       }
      
    
    %>
    
    
    
 