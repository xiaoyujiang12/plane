<%-- 
    Document   : jipiaoadd
    Created on : 2021-12-14, 21:39:54
    Author     : 11758
--%>

<%@page pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="jip" class="bean.Jip"/>
<jsp:setProperty name="jip" property="*" />

<%
    int result = jip.addJip();
    String msg = "添加失败！";
    if(result == 1){
        msg = "添加成功！";
    }
    %>
    <script>window.alert('<%=msg%>');</script>
    <% 
      response.setHeader("Refresh","1;url=jipiaoindex.jsp");
%>

