
<%@page pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="air" class="bean.Air"/>
<jsp:setProperty name="air" property="*"/>

<%
    int result = air.addAir();
    String msg = "添加失败！";
    if(result == 1){
        msg = "添加成功！";
    }
    %>
    <script>window.alert('<%=msg%>');</script>
    <% 
      response.setHeader("Refresh","1;url=index.jsp");
%>

