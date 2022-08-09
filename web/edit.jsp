<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>修改航班信息</title>
         <link rel="stylesheet" href="css/air.css" type="text/css">
         <script type="text/javascript" src="js/air.js"></script>
                 <style type="text/css">
            .a{width: 1000px;height: 400px;margin: 0 auto;}
   
            .b1{background-color: pink;padding-top: 10px;margin-top: 10px;;height:300px;padding-bottom: 0px;width: 1000px;}
            .b2{background-color: #ccffff}
        </style>
    </head>
    <body>
        <jsp:useBean id="air" class="bean.Air"/>
        <jsp:setProperty name="air" property="flightnumber"/>
<%  HashMap flight = (HashMap)air.getAir();
if(flight !=null){
    %>
    <div class="a">  
        <div class="b1"><p align="center"><font size=4>修改航班信息</p>
            <div class="b2">
     <form name="forml" onsubmit="return check()" action="edit_do.jsp" method="post">
       <input type="hidden" name="flightnumber" value="<%=flight.get("flightnumber")%>">
             <table align="center" width="30%"> 
              <tr><th>航班号：</th>
             <td><input type="text" name="flightnumber" value="<%=flight.get("flightnumber") %>"></td> </tr>              
             <tr><th>起飞地：</th>
            <td><input type="text" name="start" value="<%=flight.get("start") %>"> </td></tr>
             <tr><th>目的地：</th>
            <td><input type="text" name="finish" value="<%=flight.get("finish") %>"> </td></tr>
            <tr><th>起飞时间：</th>
            <td><input type="text" name="starttime" value="<%=flight.get("starttime" )%>"> </td></tr>
               <tr><th>到达时间：</th>
              <td><input type="text" name="finishtime" value="<%=flight.get("finishtime") %>"> </td></tr>
                    <tr><th colspan="2">
                <input type="submit" value="修改">
             <input type="reset" value="重置"> </th></tr>
         </table>
     </form></div></div></div>
<%  }   %>

    </body>
</html>    
