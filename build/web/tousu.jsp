<%-- 
    Document   : tousu
    Created on : 2021-12-13, 15:45:09
    Author     : 11758
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>投诉</title>
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
	.left ul li{margin-left: 10px;color: black;list-style: none;margin-bottom: 35px;font-size: 20px;}
	.left ul li a{ text-decoration: none;color: black;}
 	.left a:hover{color: aliceblue;}
	.right{float: left;width: 70%;height:500px; background-color:#86E0F7;font-size: 17px;}   
	.cc{ border:1px solid black;float: left;margin-left: 15px;}
	.right ul li{margin-left: 2px;color: black;list-style: none;margin-bottom: 5px;}
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
                            <li><h3 style="color:#F0F8FF">感谢您的投诉<br>相信我们会做得更好</h3></li>
				<img src="images/邮箱.jpg" width=100px" height="100px">
                               <li><h4>投诉和建议：</h4></li>
				<li><a href="tousu.jsp">投诉</a></li>
				<li><a href="jianyi.jsp">建议</a></li>
			</ul>
		</div>
            <div class="right">               
                <ul><li><h1 style="color:#2F4F4F">投诉相关说明：</h1></li></ul>
                &nbsp; &nbsp; 1.可打客服电话进行投诉：1234567<br>
               &nbsp; &nbsp; 2.提交投诉格式为：文字说明、视频、音频、图片。<br>
               &nbsp; &nbsp; 3.符合国家法律、法规、规章有关规定的。<br>
               &nbsp; &nbsp; 4.对符合受理条件的投诉，铁路客服人员将于2个工作日内电话联系客户核实处理。<br><br>
                  <form action="checkuser4.jsp" method="post" id="form1" name="form1">               
               <table  border="0">
               <tr><td>&nbsp;&nbsp;您的联系邮箱：</td><td><input type="text" name="email"/></td></tr>
               </table>
               <table  border="0" >
                   <tr><td>&nbsp;&nbsp;请说明您要投诉的内容：</td></tr><tr></tr>
                   <tr> <td>&nbsp;&nbsp;<textarea name="liuyan" rows="7" cols="57"></textarea></td></tr>
                   <tr><td>&nbsp;&nbsp;<input type="submit" value="提交" class="s3"></td></tr>
               </table></form>
            </div>
        </div>
    </body>
</html>
