<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%@ page import="java.sql.*" %>

    <% 
    
     Connection conn = null ;    // Connection 예제 변수 : conn 초기화
     String driver = "oracle.jdbc.driver.OracleDriver" ;    // ojdbc11.jar  
     String url = "jdbc:oracle:thin:@localhost:1521:xe";  // oracle JDBC 
          
      // 예외 설정  : 오류가 발생이 되더라도 프로그램이 중지 되지 않도록 설정 . 
      
       try {  //    try 블럭 : try 블락에서 오류가 있을때 catch {} 이 작동됨 .  
    	Class.forName (driver);    // driver 를 로드 . 
       conn = DriverManager.getConnection(url,"C##HR","1234" ) ;
      
       // JSP 에서 출력 해라 . 
       out.println (" DB 연결이 성공 했습니다. ") ;
    	   
       }catch (Exception e ) {
    	    // catch 블럭  :  try 블락에서 오류가 발생 될때 작동이 된다 . 오류가 없으면 작동이 안된다. 
    	    out.println ("DB 연결이 실패 했습니다 . ") ;
    	    
    	    		//db 연결이 실패시 오류난 정보를 콘솔에 출력 
    	    	e.printStackTrace();
    	    		
       }
       out.println (" <br> <br>");
    	    		
      out.println ( " 프로그램이 정상 작동 됩니다. ") ;
    	    		
    %>
    
