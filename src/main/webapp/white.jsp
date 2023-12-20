<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
        <%@ page import = " java.sql .*, java.util.*" %>
    
<%request.setCharacterEncoding("UTF-8");%>
    
 <%  String na= request.getParameter("name");
   String ag= request.getParameter("age") ;
   String wh= request.getParameter("weight") ;
   String ad= request.getParameter("addrs");
   String ph= request.getParameter("phone");
   %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%=na%>    <br>
<%=ag%>     <br>
<%=wh%>   <br>
<%=ad%>  <br>
<%=ph%>  <br>


</body>
</html>