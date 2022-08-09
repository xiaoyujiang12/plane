<%-- 
    Document   : checkuser4
    Created on : 2021-12-13, 16:10:39
    Author     : 11758
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
</head>
<body><center>
    <% request.setCharacterEncoding("utf-8");%>
           <%
            String email=request.getParameter("email");
            String liuyan=request.getParameter("liuyan");
 
                 Connection con= db.getConnction();
                Statement stmt=con.createStatement();

               String sql = "insert into liuyanban values(?,?)";
                PreparedStatement liuyanbanQuery=con.prepareStatement(sql);
                liuyanbanQuery.setString(1,email);liuyanbanQuery.setString(2,liuyan);
                int result=liuyanbanQuery.executeUpdate();
               out.print("<font color=pink><h1>恭喜您，留言成功！</h1></font><br><br>");
                out.print("<a href='zhuyem.html'>返回主页面<//a>");
             //  response.sendRedirect("jianyi.jsp");
           %>

</center>
</body>
</html>