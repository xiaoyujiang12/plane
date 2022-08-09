
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<html>
    <head>
        <title>管理员登录验证页面</title>
    </head>
    <body>
        <% request.setCharacterEncoding("utf-8");%>
           <%
            String user=request.getParameter("user");
            String password=request.getParameter("password");
            String checkcode=request.getParameter("checkcode");
            String piccode=request.getSession().getAttribute("randStr").toString();
            %>
        
       <%
                Connection con= db.getConnction();
                Statement stmt=con.createStatement();
                String sql="select * from guanliyuan";
                sql += " where user = '" + user + "' and password = '" + password + "'";
                 ResultSet rs=stmt.executeQuery(sql);
           if(checkcode.equals(piccode)&&rs.next()){
                session.setAttribute("user", user);
                out.print("<font color=pink>恭喜您，验证通过！</font><br><br>");
                out.print("<a href='index.jsp'>主页面<//a>");
                    response.sendRedirect("index.jsp");
            }           else{
               out.print("无此管理员或密码错误，登录失败！<br><br>");
               out.print("<a href='guanliyuandenglu.jsp'>返回登录<//a>");
           }
           %>
           
    </body>
</html>
