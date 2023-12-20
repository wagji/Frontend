<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <!--  jsp 에서 , java , sql 패키지의 하위 모든 클래스를 import  
      java .utill 패키지의 하위 모든 클래스를 import  -->
      
    <%@ page import = " java.sql .*, java.util.*" %>
    
    <!--  클라이언트에서 넘어오는 한글이 꺠지지않게 처리  -->
    <%request.setCharacterEncoding("UTF-8"); %>
    
    <!-- 클라이언트에서 넘어오는 값을 받아서  출력 :request 객체    -->
   <% 
   
   // http://localhost:8181/JSP_PROJ/save.jsp
   // 파라미터로 넘어오는 값은 모두 string
   // 파라미터 :  ?번 수행 = 값& 변수명 = 값 & 변수명 = 값
   
   String na = request.getParameter("name");
   String en = request.getParameter("email") ;
   String sub = request.getParameter("subject") ;
   String count = request.getParameter("contents");
   
   %>


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  변수에 담긴 값을 출력  -->

<%=na%>    <br>
<%=en%>     <br>
<%=sub%>   <br>
<%=count%>  <br>




</body>


</html>