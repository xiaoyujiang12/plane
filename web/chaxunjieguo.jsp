
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table{ border-collapse: collapse; }
th,td{
    border: 1px solid #999;
    text-align: center;
    padding: 20px 0;
}
table thead tr{
    background-color: #008c8c;
    color: #fff;
}
table tbody tr:nth-child(odd){
    background-color: #eee;
}
table tbody tr:hover{
    background-color: #ccc;
}
table tbody tr td:first-child{
    color: #f40;
}
table tfoot tr td{
    text-align: right;
    padding-right: 20px;
}
        </style>
        <title>查询结果</title>
        <link rel="stylesheet" href="css/air.css" type="text/css">
        <script type="text/javascript" src="js/air.js"></script>
    </head>
    <body>
        <h2 align="center">航班信息</h2>
        <jsp:useBean id="air" class="bean.Air"/>
        <div class="cc">
        <table align="center" width="70%" border="1">
            <tr><th>航班号</th><th>起飞地</th><th>目的地</th><th>起飞时间</th><th>到达时间</th></tr>
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
                </tr><%   } %>
        </table></div>
    </body>
</html>



