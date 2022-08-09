<%-- 
    Document   : jipiaoedit
    Created on : 2021-12-14, 21:30:14
    Author     : 11758
--%>

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
         <jsp:useBean id="jip" class="bean.Jip"/>
        <jsp:setProperty name="jip" property="aflightnumber"/>
<%  
    HashMap ariticket = (HashMap)jip.getJip();
if(ariticket !=null){
    %>
    <div class="a">  
        <div class="b1"><p align="center"><font size=4>修改航班信息</p>
            <div class="b2">
     <form name="forml" onsubmit="return check()" action="jipiaoedit_do.jsp" method="post">
       <input type="hidden" name="aflightnumber" value="<%=ariticket.get("aflightnumber")%>">
             <table align="center" width="30%"> 
              <tr><th>航班号：</th>
             <td><input type="text" name="aflightnumber" value="<%=ariticket.get("aflightnumber") %>"></td> </tr>              
             <tr><th>座位号：</th>
            <td><input type="text" name="aseat" value="<%=ariticket.get("aseat") %>"> </td></tr>
             <tr><th>价格：</th>
            <td><input type="text" name="price" value="<%=ariticket.get("price") %>"> </td></tr>
                    <tr><th colspan="2">
                <input type="submit" value="修改">
             <input type="reset" value="重置"> </th></tr>
         </table>
     </form></div></div></div>
<%  }   %>

    </body>
</html>


