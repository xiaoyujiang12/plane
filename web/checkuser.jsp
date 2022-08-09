 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<html>
    <head>
        <title>登录验证页面</title>
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
                String sql="select * from zhuce";
                sql += " where user = '" + user + "' and password = '" + password + "'";
                 ResultSet rs=stmt.executeQuery(sql);
           if(checkcode.equals(piccode)&&rs.next()){
                session.setAttribute("user", user);
//                out.print("<font color=pink>恭喜您，验证通过！</font><br><br>");
//                out.print("<a href='zhuyem.jsp'>返回主页面<//a>");
              response.sendRedirect("tousu.jsp");
            }           else{
               out.print("无此用户名或密码错误，登录失败！<br><br>");
               out.print("<a href='denglu.jsp'>返回登录<//a>");
           }
           %>
           
    </body>
</html>
