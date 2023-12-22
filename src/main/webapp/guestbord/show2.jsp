<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
      
    <%@page import = "java.sql.*" %>
    
    <%@ include file="../db_conn/db_conn_Oracle.jsp" %>
    
    <%@ page import="java.sql.PreparedStatement" %>
    

<% PreparedStatement pstnt = null; %>
    
  
    
    <%
     // DB 에다 값을 읽어 와서 Resultset 객체에 저장
     
     String sql = null ;
    ResultSet rs = null;  
    %>
    
    <%
    sql = "select *  from guestboard order by name desc " ; 
    
    pstnt = conn.prepareStatement(sql);
    
    
    
    try { 
    	
    	//pstnt 객체를 실행후 rs 에 저장 : rs :select 한 모든 레코드 저장 
    	
        rs = pstnt.executeQuery();
    
    }catch (Exception e ) {
    	 out.println ( "DB 에서 select 중 오류가 발생되었습니다. ") ;
    	  e.printStackTrace();
    	  
    }
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

             <h2> PreparedStatement 쿼리 실행후 rs 에 담아서 출력  </h2>
                 
                 <table width = "600px" border = "1 ">
                 
                  <tr> <th>이름 </th> <th> 메일주소  </th> <th>제목  </th> <th> 내용 </th> </tr>   
                  
            
             
             <%
                     if (rs.next()) {
                    	 do{
             
             %>
             <!--  출력 부분 : 테이블의 컬럼 명으로 출력  .  -->
             
             
                   <tr><td> <%= rs.getString(1 ) %></td>  
                   <td> <%=rs.getString(2 ) %></td> 
                    <td><%=rs.getString(3 ) %> </td> 
                    <td> <%=rs.getString(4 ) %></td> </tr>

           <%
                    	 }while (rs.next() );
           
                     } else {
                    	 out.println("DB 에 값이 존재하지 않습니다. ") ;
                    	 
                    	 
                     }
           
           %>
           
</table>


</body>
</html>