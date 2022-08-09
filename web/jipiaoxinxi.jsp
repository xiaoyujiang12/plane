<%-- 
    Document   : jipiaoxinxi
    Created on : 2021-12-14, 16:51:27
    Author     : 11758
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>机票信息查询</title>
	<style>
           *{font-family: "楷体";} 
            	.s3 {
                         display: inline-block;
                         font-size: 20px;
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
		.biaoyu{color:#86E0F7;font-family: "华文楷体","楷体"}
		 .top{
			width: 100%;
			height: 58px;
			box-shadow: 2px 5px 6px rgb(239,241,242);
		}
		.logo{
			width: 140px;
			height: 58px;
			margin: 0 150px;
			float: left;
		}
                .logo2{width: 400px;height: 58px;float: left;margin-right:150px;}
		.logo img{
			float: left;
			width: 58px;
			height: 58px;
			border-radius: 50%;
		}
		.top-right{
			width: 500px;
			position:absolute;
			right:0px;
			
		}
		.top-right a{
			color:black;
                        text-decoration: none;
		}
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
                 .main{margin: 20px auto; width: 1200px;height:500px; left: 33.2%;top:40%;}
        .left{float: left;width:30%; height:500px;background-color: #4169E1;}
	.left ul li{text-decoration:none;margin-left: 10px;color: black;list-style: none;margin-bottom: 35px;font-size: 20px;}
	.left ul li a{ text-decoration: none;color: black;}
 	.left ul li a:hover{color: aliceblue;}
	.right{float: left;width: 70%;height:500px; background-color:#86E0F7;font-size: 17px;}   
	.cc{ border:1px solid black;float: left;margin-left: 15px;}
	.right ul li{margin-left: 2px;color: black;list-style: none;margin-bottom: 5px;}
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
    </head>
    <body>
         <% String path = request.getContextPath();
         String basePath = request.getScheme() + "://"+request.getServerName() + ":"+request.getServerPort() + path +"/";%>
	<div class="top">
		<div class="logo">
                    <img src="images/LOGO.jpg">
		</div>
            <div class="logo2"><marquee direct="left" ><font class="biaoyu" size="+1"  ><h2>您好！ <%= request.getSession().getAttribute("user") %></h2></font></marquee></div>
             <div class="top-right">
			<div class="box1">
		   <span><a href="zhuyem.html">返回首页</a></span>			
		</div>
            </div>          
	</div>    
    	<div class="main">
		<div class="left">
			<ul>
                            <li><h2 style="color:#F0F8FF"><a href="jipiaoxinxi.jsp">我的机票</h2></li>
                               <li><h4>投诉和建议：</h4></li>     
				<li><a href="tousu.jsp">投诉</a></li>
				<li><a href="jianyi.jsp">建议</a></li>
			</ul>
		</div>
            <div class="right"> 
                <br><br><br>
               
                <table align="center" width="70%" border="1">
                    <tr><th>航班号</th><th>姓名</th><th>身份证号</th><th>电话</th><th>起飞地</th><th>目的地</th><th>用户名</th></tr>            
             <tr>
                    <td><%= request.getSession().getAttribute("flightnumber") %></td>
                    <td><%= request.getSession().getAttribute("xm") %></td>
                    <td><%= request.getSession().getAttribute("ss") %></td>
                    <td><%= request.getSession().getAttribute("dh") %></td>
                    <td><%= request.getSession().getAttribute("start") %></td>
                    <td><%= request.getSession().getAttribute("finish") %></td>
                    <td><%= request.getSession().getAttribute("user") %></td>
                  
                </tr>                
        </table>
    </div>
    </div>
    </body>
</html>


