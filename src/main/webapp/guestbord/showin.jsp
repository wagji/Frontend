<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  java.sql.* : Connection , Statement, Preparedstatement ,Recodeset 객체 -->

<%@page import = "java.sql.*"  %>

<!--  conn : oracle xe  -->

<%@ include file="../db_conn/db_conn_Oracle.jsp" %>

<%    // 변수를 초기화  , 

String sql = null ;
Statement stmt = null; 

ResultSet rs = null;  
// Database 의 테이블의 레코드를 다룬객체 . 
                                 // select 쿼리를 하면 select 한 결과를 Resultset 객체에 담아야함 .
                                 
                                 sql = "select * from guestboard" ; 
 // Statement 객체 생성
 
 stmt = conn.createStatement();
 
       //stmt 는 oracle 의 xe db 연결한 상태에서 
       
       try {
    	 rs =   stmt.executeQuery(sql);   
    	 // rs.next () ;          다음 레코드가 존재하면 true . 
    	 // rs 는 select 한 결과 레코드 셋을 담고 있다 .
    	 
    	 //  sql : select 문인 경우 ,select 한 결과 레코드를 담는객체 . rs  
    	   //  insert , update ,delete 
    	   
       }catch (Exception e )  {
    	   
    	   out.println("DB 접속에 문제가 생겼습니다. " ) ;
    	   e.printStackTrace();
    	   
       }
 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<center>
<body>

<h2>  DB 의 값을 읽어 와서 출력 하는 페이지 </h2>
          
           <%
 
           if (rs.next()) {   // rs의 레코드가 존재할떄 작동된다 .    커서가 다음 레코드로 위치함. 
                 do  { 
           
           %>
           
                 <table border="1" width="50%">
    <tr>
        <td colspan="2"><%= rs.getString("name") %></td>
     </tr>
   
   
    <tr>
        <td>글쓴이:</td>   <td><%= rs.getString("name") %></td>
    </tr>
   
   
    <tr>
        <td>이메일:</td>  <td><%= rs.getString("email") %></td>
    </tr>
    
    <tr> <td>글내용:</td>   <td><%= rs.getString("content") %></td> <!-- Fix the typo here -->
         </tr>
    
    
</table>

                  <br>
             <%
             
                      }while (rs.next());
                 }
             
             %>
   
</body>

</center>
</html>