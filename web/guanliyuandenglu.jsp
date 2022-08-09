
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
 <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<html>
    <script type="text/javascript">
        function reloadImage(t){t.src="./ImageServlet?flag="+Math.random();
        }
        </script>
           <head>
               <title>管理员登录页面</title>
               <style>
                     body{
		background: url("images/66.jpg") no-repeat center center fixed;
                -webkit-background-size: cover;
                -o-background-size: cover;                
                background-size: cover;
	        }
                   .biaoyu{color:#00A6DA;font-family: "华文楷体","楷体"}
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
                .a2{
                    padding-top: 70px;
                }
                .w1{width: 150px;height: 30px;}
                form{
                    width: 500px;
                    height:300px;
/*                    background-color: #F5EAE8;*/
                    padding: 30px 40px;border: 1px soild #F5EAE8;
                }
               </style>
           
        <base href = "< % = basePath %>">
    </head>
    <body> 
  <div class="index">
	<div class="top">
		<div class="logo">
                    <img src="images/LOGO.jpg">
		</div>
            <div class="logo2"><marquee direct="left" ><font size="+1" class="biaoyu"><h2>管理员登录</h2></font></marquee></div>
            </div> 
            <div class="a2" >  
                <center>   <form action="checkuser3.jsp" method="post">
            <table>
                <tr><td><font color="green">身份证号：</font></td><td><input type="text" name="user" class="w1"></td></tr>
                 <tr><td><font color="green">密码：</font></td><td><input type="password" name="password" class="w1"></td></tr>
                 <tr><td><font color="green">验证码：</font></td><td><input type="text" name="checkcode" class="w1">
                         <img src="./ImageServlet" align="middle" alt="看不清，请点这里！" onclick=" reloadImage(this)"></td></tr>
                 <tr><td colspan="2" align="center"><input type="submit" value="登录"</td></tr>
            </table> 
        </form>       </center>  
        </div>     
 </div>        
        
    
    </body>
</html>


