<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<%
    request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查询结果</title>
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
table tfoot tr td{
    text-align: right;
    padding-right: 20px;
}
            body{
		background: url("images/背景.jpg") no-repeat center center fixed;
                -webkit-background-size: cover;
                -o-background-size: cover;                
                background-size: cover;
	        }
                 table {
            background-color:#FAF0E6 ;
            width:800px;
            border:1px solid #444;
        }
                 .top{
		width: 100%;
		height: 58px;
		box-shadow: 2px 5px 6px rgb(239,241,242);
		}
                .biaoyu{color:#0000CD;font-family: "华文楷体","楷体"}
		.logo{
			width: 140px;
			height: 58px;
			margin: 0 150px;
			float: left;
		}
                .logo2{width: 500px;height: 58px;float: left;margin-right:250px;}
		.logo img{
			float: left;
			width: 58px;
			height: 58px;
			border-radius: 50%;
		}
                .a2{ padding-top: 70px; }
                .w1{width: 150px;height: 30px;}
                .top-right{
			width: 500px;
			position:absolute;
			margin-left:1000px;			
		}
		.top-right a{color:black;text-decoration: none;}
		div[class^=box]{
			font-family: "楷体";
			height: 58px;
			float: left;
			font-size: 24px;
			margin-right: 50px;
			line-height: 58px;
			border-radius: 8px;
		}
		div[class^=box]:hover{
			background: rgb(239,241,242); 
		}    
               </style>
        <link rel="stylesheet" href="css/air.css" type="text/css">
    </head>
    <body> 
    <div class="index">
	<div class="top">
		<div class="logo">
                    <img src="images/LOGO.jpg"></div>
            <div class="logo2"><marquee direct="left" ><font size="+1"class="biaoyu" ><h2>欢迎您查询云鱼石机票</h2></font></marquee></div>
             <div class="top-right">
			<div class="box1">
					<span><a href="zhuyem.html">返回首页</a></span>			
		</div>
            </div>  
            </div>  
    </div> <br><br>
    <center>
        <form action="dinggou.jsp" method="post">   
        <table align="center" width="70%" border="1"><tr style="background:#2F4F4F;color:#F5FFFA ">
                <td>航班号</td><td>出发地</td><td>目的地</td><td>出发时间</td><td>到达时间</td> <td>价格</td>
               <td>订购</td></tr>      
           <%
          String start=request.getParameter("start");        
          String finish=request.getParameter("finish"); 
          String starttime=request.getParameter("starttime");
//             String flightnumber=request.getParameter("flightnumber");
            Connection con= db.getConnction(); 
            Statement stmt=con.createStatement();
//            String sql = "select * from flight where start = '" + start + "' and finish = '" + finish + "'";
 String sql = "select flight.flightnumber,start,finish,starttime,finishtime,price from flight,airticket where flight.flightnumber=airticket.aflightnumber and start = '" + start + "' and finish = '" + finish + "' and starttime between'" + starttime + "' and 10000 ";
            ResultSet rs=stmt.executeQuery(sql);            
       while (rs.next()) {
            session.setAttribute("start", start);
             session.setAttribute("finish", finish);
             session.setAttribute("starttime", start);
 	%>
               <center><tr>
	<td> <%=rs.getString("flight.flightnumber") %> </td>
        	<td><%=rs.getString("start") %></td>
        	<td><%=rs.getString("finish") %></td>
        	<td><%=rs.getString("starttime") %></td>
                <td><%=rs.getString("finishtime") %></td>
                <td><%=rs.getFloat("price") %></td>
                <td><input type="submit" value="订购"></td>
     	 </tr>
      	<%
//               session.setAttribute("flightnumber", flightnumber);
        	}
      %>       </table></form>
    </center>

    </body>
</html>
