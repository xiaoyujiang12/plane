<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>航班信息管理系统</title>
        <link rel="stylesheet" href="css/air.css" type="text/css">
        <style type="text/css">
            .a{width: 1000px;height: 800px;margin: 0 auto;}
            .b{background-color: #00A6DA;margin-top: 0px;height: 65px;padding-top: 10px;margin-bottom: 0px; width: 1000px;}   
            .b1{background-color:#E7CDCC;padding-top: 0px;margin-top: 0;height:700px;padding-bottom: 0px;width: 1000px;}
            .b2{background-color:#00A6DA;height:30px; text-align: center;  }
        </style>

    </head>
    <body>
            <div class="a">
	<div class="b"><h2 align="center">航班信息管理</h2>
            <div class="b1">
                <div class="b2">   
                    <p align="center">
                       <a href="add.html"><font size="4px">添加航班信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="liuyanban.jsp"><font size="4px">查看留言板信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="jipiaoindex.jsp"><font size="4px">查看机票信息系统</a>
                    </p>
                </div>
        <jsp:useBean id="air" class="bean.Air"/>
        <table align="center" width="50%" border="1"><br>
            <tr><th>航班号</th><th>起飞地</th><th>目的地</th><th>起飞时间</th><th>到达时间</th><th>操作</th></tr>
            <%
                ArrayList airs=(ArrayList)air.getAllAirs();
                for(Object o:airs){
                    Map m = (HashMap)o;
                    %>
              
             <tr>
                    <td><%=m.get("flightnumber") %></td>
                    <td><%=m.get("start") %></td>
                    <td><%=m.get("finish") %></td>
                    <td><%=m.get("starttime") %></td>
                     <td><%=m.get("finishtime") %></td>
                     <td><a href="edit.jsp?flightnumber=<%=m.get("flightnumber")%>"><font size="+1" color="green">修改</font></a>&nbsp;
                        <a href="del.jsp?flightnumber=<%=m.get("flightnumber")%>" onclick="return confirm('确定要删除吗？')">删除</a></td>
                </tr><%   } %>
        </table>
           </div></div></div>
       
    </body>
</html>

