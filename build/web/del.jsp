

<%@page pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="air" class="bean.Air"/>
<jsp:setProperty name="air" property="flightnumber"/>
<%
    int result = air.delAir();
    String msg = "删除失败!";
    if(result == 1){
        msg = "删除成功";
    }
    %>
    <script>window.alert('<%=msg %>');</script>
    <% 
      response.setHeader("Refresh","1;url=index.jsp");
%>
    

