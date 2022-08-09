<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<html>
    <head>

        <title>注册页面</title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8");%>
           <%
            String user=request.getParameter("user");
            String password=request.getParameter("password");
            String password2=request.getParameter("password2");
                 Connection con= db.getConnction();
                Statement stmt=con.createStatement();

               String sql = "insert into zhuce values(?,?)";
                PreparedStatement zhuceQuery=con.prepareStatement(sql);
                zhuceQuery.setString(1,user);zhuceQuery.setString(2,password);
                int result=zhuceQuery.executeUpdate();
               
               response.sendRedirect("denglu.jsp");
           %>
           
    </body>
</html>
