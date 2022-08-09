<%-- 
    Document   : jipiaoindex
    Created on : 2021-12-14, 21:29:08
    Author     : 11758
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>机票信息管理系统</title>
        <link rel="stylesheet" href="css/air.css" type="text/css">
        <style type="text/css">
            .a{width: 1000px;height: 400px;margin: 0 auto; }
            .b{background-color: paleturquoise;margin-top: 0px;height: 100px;padding-top: 10px;margin-bottom: 0px; width: 1000px;}   
            .b1{background-color: pink;padding-top:3px;margin-top: 3px;;height:300px;padding-bottom: 0px;width: 1000px;}
            .b2{background-color: #ccffff}
            table{
                border-collapse:collapse;
            }
        </style>

    </head>
    <body>
        <div class="a">
            <div class="b"><h2 align="center">机票信息管理</h2>
            <div class="b1">
              <p align="center"><a href="jipiaoadd.html"><font size="4px">添加机票信息</a></p>
        <jsp:useBean id="jip" class="bean.Jip"/>
        <table align="center" width="50%" border="1" >
            <tr><th>航班号</th><th>座位号</th><th>价格</th><th>操作</th></tr>
          <%
                ArrayList jips=(ArrayList)jip.getAllJips();
                for(Object o:jips){
                    Map m = (HashMap)o;
                    %>
              
             <tr>
                    <td><%=m.get("aflightnumber") %></td>
                    <td><%=m.get("aseat") %></td>
                    <td><%=m.get("price") %></td>
      
                     <td><a href="jipiaoedit.jsp?aflightnumber=<%=m.get("aflightnumber")%>"><font size="+1" color="green">修改</font></a>&nbsp;
                        <a href="jipiaodel.jsp??aflightnumber=<%=m.get("aflightnumber")%>aseat=<%=m.get("aseat")%>" onclick="return confirm('确定要删除吗？')">删除</a></td>
                </tr>
                <%   } %>
        </table>
              <center>  <br><br>  <a href="index.jsp"> <font color='blue' size='-1'>返回航班信息管理</font></a> </center>
           </div></div></div>
    </body>
</html>
