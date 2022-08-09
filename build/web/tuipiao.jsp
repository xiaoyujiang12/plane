

<%@page pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="air" class="bean.Air"/>
<jsp:setProperty name="air" property="flightnumber"/>
<%
     String flightnumber=request.getParameter("flightnumber");
    String sql = "delete from flight where flightnumber=?";
    out.print(flightnumber);
//    int result = air.delAir();
//    String msg = "退票失败!";
//    if(result == 1){
//        msg = "退票成功";
//    }
    %>
   
    <% 
//      response.setHeader("Refresh","1;url=index.jsp");
%>
    

