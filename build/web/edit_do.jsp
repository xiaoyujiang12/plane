
<%@page pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="air" class="bean.Air"/>
<jsp:setProperty name="air" property="*"/>
<%
    int result = air.updateAir();
    String msg = "修改失败，点击确定跳转到航班信息！";
    if(result ==1){
        msg = "修改成功，点击确定跳转到航班信息！";
    }
    %>
    <script>window.alert('<%=msg %>');</script>
    <% 
      response.setHeader("Refresh","1;url=index.jsp");
%>
