<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = " java.sql.* " %>
    
    <%
    
    
      Connection conn= null ;
    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String url = "jdbc:sqlserver://localhost:1433; databaseName=myDB; encrypt=false";
    
    // 예외 ( Error )  처리 : 
    try { // try 블락에서 오류가 발생하더라도 프로그램이 멈추지 않도록 
    	Class.forName(driver);
    		conn = DriverManager.getConnection(url,"sa","1234" );
    		
    		// conn 이 오류가 없으면 작동이된다 .
    		out.println ("MSSQL 서버에 <b> 성공</b> 적으로 접속 했습니다 <br>" );
    		
    	
    }catch (Exception e ) {
    	// try 블락의 오류가 있을떄만 작동
		out.println ("MSSQL 서버에 <b>접속 실패</b>  했습니다 <br>" );
    			
        e.printStackTrace() ; // 오류난 정보를 자세하게 출력     			
        
        
    }
    
    
    %>
    
    
    
    
