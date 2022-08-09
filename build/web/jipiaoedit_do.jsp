<%-- 
    Document   : jipiaoedit_do
    Created on : 2021-12-14, 21:37:17
    Author     : 11758
--%>

<%@page pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="jip" class="bean.Jip"/>
<jsp:setProperty name="jip" property="*" />
<%
    int result = jip.updateJip();
    String msg = "修改失败！";
    if(result ==1){
        msg = "修改成功！";
    }
    %>
    <script>window.alert('<%=msg%>');</script>
    <% 
      response.setHeader("Refresh","1;url=jipiaoindex.jsp");
%>

