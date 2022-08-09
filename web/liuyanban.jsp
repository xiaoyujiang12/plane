
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<html>
<head>  <title>留言板</title>
        <link rel="stylesheet" href="css/air.css" type="text/css">
        <style type="text/css">
            .a{width: 1000px;height: 800px;margin: 0 auto;}
            .b{background-color: #00A6DA;margin-top: 0px;height: 65px;padding-top: 10px;margin-bottom: 0px; width: 1000px;}   
            .b1{background-color:#E7CDCC;padding-top: 0px;margin-top: 0;height:700px;padding-bottom: 0px;width: 1000px;}
        </style>
</head>

<body><div class="a">
	<div class="b"><h2 align="center">留言板</h2>
            <div class="b1">
      <table align="center" width="50%" border="1"><tr><td>邮箱</td><td>内容</td></tr>
	<% 
   	 Connection con= db.getConnction();
         Statement stmt=con.createStatement();
   	ResultSet rs = stmt.executeQuery("select * from liuyanban");
   	while (rs.next()) {
 	%>
          <tr>
	<td> <%=rs.getString(1) %> </td>
        <td> <%=rs.getString(2)%> </td>

     	 </tr>
      	<%
        	}
     	%>
      </table>   </div></div></div>
            </body></html>

