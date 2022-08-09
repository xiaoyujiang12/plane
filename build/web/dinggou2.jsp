
<%-- 
    Document   : dinggou2
    Created on : 2021-12-14, 8:45:02
    Author     : 11758
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<% String path = request.getContextPath();
String basePath = request.getScheme() + "://"+request.getServerName() + ":"+request.getServerPort() + path +"/";
%>

<html>
    <head>
        <title>订票信息</title>
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
                .logo2{width: 450px;height: 58px;float: left;margin-right:150px;}
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
			margin-left: 950px;			
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
                		.s3 {
                         display: inline-block;
                         margin-top: 53px;
			 margin-bottom: 53px;
                         padding: 1px 20px;
                         font-size: 24px;
                         cursor: pointer;      
                         text-align: center;   
                         font-family: "华文楷体","楷体";
                         background-color: rgb(134,224,247);
                         border: none;
                         border-radius: 15px;
                         box-shadow: 0 9px #999;
                         background-color: #4169E1;
                         box-shadow: 0 5px #666;
                         transform: translateY(4px);
                }
               </style>
                <script type="text/javascript">
    function validate()
    {   
        alert("付款成功"); 
    }
    </script>
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
      </div><br><br>
    <center> 
       <form method="post">   
        <table align="center" width="70%" border="1"><tr style="background:#2F4F4F;color:#F5FFFA ">
                <td>身份证号</td><td>姓名</td><td>电话</td><td>航班号</td><td>出发地</td><td>目的地</td><td>出发时间</td><td>到达时间</td><td>座位</td><td>价格</td></tr>            
           <%
            String ss=request.getParameter("ss");
            String xm=request.getParameter("xm");
            String dh=request.getParameter("dh");
            String flightnumber=request.getParameter("flightnumber");    
            Connection con= db.getConnction();
            Statement stmt=con.createStatement();
            String sql1 = "insert into dinggou values(?,?,?,?)";
            PreparedStatement zhuceQuery=con.prepareStatement(sql1);
            zhuceQuery.setString(1,ss);zhuceQuery.setString(2,xm);zhuceQuery.setString(3,dh);zhuceQuery.setString(4,flightnumber);
            int result=zhuceQuery.executeUpdate();
           %>
           
           <% String sql = "select ss,xm,dh,dinggou.flightnumber,start,finish,starttime,finishtime,aseat,price from dinggou,flight,airticket where dinggou.flightnumber=flight.flightnumber and flight.flightnumber=airticket.aflightnumber and ss = '" + ss + "' and xm = '" + xm + "' and dh = '" + dh + "' and flight.flightnumber = '" + flightnumber + "'";
            ResultSet rs=stmt.executeQuery(sql);
                
       while (rs.next()) {
             session.setAttribute("ss", ss);
             session.setAttribute("xm", xm);
               session.setAttribute("dh", dh);
             session.setAttribute("flightnumber", flightnumber);
 	%>
             <h2>我的机票信息</h2>
             <center><tr>
	<td> <%=rs.getString("ss") %> </td>
        	<td> <%=rs.getString("xm")%> </td>
        	<td><%=rs.getString("dh") %></td>
        	<td><%=rs.getString("dinggou.flightnumber") %></td>
        	<td><%=rs.getString("start") %></td>
                <td><%=rs.getString("finish") %></td>
                <td><%=rs.getString("starttime") %></td>
                 <td><%=rs.getString("finishtime") %></td>
                 <td><%=rs.getString("aseat") %></td>
                 <td><%=rs.getFloat("price") %></td>
                
     	 </tr>
      	<%
        	}
      %> 
    
        </table><input type="button" value="付钱" onclick="validate()" class="s3"></form>
  </center>  </body>
</html>


