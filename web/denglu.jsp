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
               <title>�û���¼ҳ��</title>
               <style>
                        body{
		background: url("images/44.jpg") no-repeat center center fixed;
                -webkit-background-size: cover;
                -o-background-size: cover;                
                background-size: cover;
	        }
                   .biaoyu{color:DodgerBlue;font-family: "���Ŀ���","����"}
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
                 .w2{ width: 150px;height: 35px;border-radius: 8px;background-color:DodgerBlue; 
              color:#FFFAFA;font-size: 20px; border-bottom-color:NavajoWhite ;} 
               </style>
           
        <base href = "< % = basePath %>">
    </head>
    <body > 
  <div class="index">
	<div class="top">
		<div class="logo">
                    <img src="images/LOGO.jpg">
		</div>
            <div class="logo2"><marquee direct="left" ><font size="+1" class="biaoyu"><h2>��ӭ����¼����ʯ��ƱԤ��ϵͳ</h2></font></marquee></div>
            </div> 
            <div class="a2" >  
                <center>   <form action="checkuser.jsp" method="post">
            <table>
                <tr><td><font color="green">���֤�ţ�</font></td><td><input type="text" name="user" class="w1"></td></tr>
                 <tr><td><font color="green">���룺</font></td><td><input type="password" name="password" class="w1"></td></tr>
                 <tr><td><font color="green">��֤�룺</font></td><td><input type="text" name="checkcode" class="w1">
                         <img src="./ImageServlet" align="middle" alt="�����壬������" onclick=" reloadImage(this)"></td></tr> 
                 <tr><td colspan="2" align="center"><br><input type="submit" value="��¼" class="w2">
                         <br> <a href="zhuce.jsp"><font size="2px" color="blue">��û���˺ţ�����ע��></font></a></td></tr>
            </table> 
        </form>       </center>  
        </div>     
 </div>        
        
    
    </body>
</html>
