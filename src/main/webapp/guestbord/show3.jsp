<%@ page language="java" contentType="text/html; charset=UTF-8"  
pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*,java.util.*" %>
 
    <%@ include file="../db_conn/db_conn_Oracle.jsp" %>

  <%// DB 에서 가져온 레코드 셋을 rs (result set) 에 담고 , ArrayList 에 저장후 출력  .
        // 선언만 된 상태 
        
       ArrayList<String> name = new ArrayList<>();   //  이름 
        ArrayList<String>  email = new ArrayList<>();   // 이메일 
        ArrayList<String>  subject = new ArrayList<>();  //  제목
        ArrayList<String>  content = new ArrayList<>();   //  내용
        
       %>
       
        <%  PreparedStatement pstmt = null; %>    
  
       <%
         //  개체 변수선언
         
         String sql = null ;
        ResultSet rs = null;
        %>
        
        
        <% 
        sql = "select*from guestboard order by name desc" ;
        
         // pstnt 활성화
    
    try {
    	pstmt = conn.prepareStatement(sql);

        rs = pstmt.executeQuery();

         }catch (Exception e) {
        	 out.println ("DB에 값을 읽어오는 동안 오류가 발생 되었습니다 . ") ;
        	 e.printStackTrace(); 
        	 
          } //rs 에 저장된 값을  Array List 에저장 
          if ( rs.next()) {
        	  do{
        		  
        		   name.add(rs.getString("name") ) ;   // name  : DB 의 이름 레코드 만 가지고 있음 . 
        		   email.add(rs.getString("email") ) ;
        		   subject.add(rs.getString("subject") ) ;
        		   content.add(rs.getString("content") ) ;
        		   
        		  
        	  }while  (rs.next());
          }

         
  %>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
              <h1> RS 에 저장된 값을 ArrayList 에 저장후 출력 </h1>
         <table width = "600px"  border = "1px">
          
            <tr>          <th> 이름</th>
                            <th> 이메일 </th>
                             <th> 제목 </th>
                             <th> 내용 </th>
                                                         </tr>
                                                         
                 <% 
              // ArrayList 에 0번방부터 마지막방까지 순환 하면서 필드의 내용을 출력   
                                                         
                           for (int i = 0 ; i < name.size () ; i++ ) {
                                                        	                   
                                                         %>
        <tr>   <th>   <%=name.get(i) %> </th>
                  <th>  <%=email.get(i) %>  </th>
                  <th>    <%=subject.get(i) %></th>
                  <th>  <%=content.get(i) %> </th> 
                                                                     </tr>
                                       <%
                                                         }
                             
                                       %>
    </table>


</body>
</html>