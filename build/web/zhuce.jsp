
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
<html>
           <head>
               <script type="text/javascript">
    function validate()
    {
    var user=document.forms[0].user.value;
    var password=document.forms[0].password.value;
    var password2=document.forms[0].password2.value;
    if(user.length<2){
        alert("������Ϸ����֤�ţ�");                            //��֤�û���
    }
    else if(password.length<3){
        alert("����������λ��");                                  //��֤����
    }
  else if(password!=password2){
            alert("���벻һ��");
            return false;
        }
    else{
        document.forms[0].submit();                                  //�ύ��userrAdd2.jsp
    }
    }
    </script>
               <title>�û�ע��ҳ��</title>
               <style>
                            body{
		background: url("images/44.jpg") no-repeat center center fixed;
                -webkit-background-size: cover;
                -o-background-size: cover;                
                background-size: cover;
	        }
                   .top{
			width: 100%;
			height: 58px;
			box-shadow: 2px 5px 6px rgb(239,241,242);
		}
                .biaoyu{color:DodgerBlue;font-family: "���Ŀ���","����"}
		.logo{
			width: 140px;
			height: 58px;
			margin: 0 150px;
			float: left;
		}
                .logo2{width: 500px;height: 58px;float: left;margin-right:150px;}
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
    <body> 
  <div class="index">
	<div class="top">
		<div class="logo">
                    <img src="images/LOGO.jpg">
		</div>
            <div class="logo2"><marquee direct="left" ><font size="+1"class="biaoyu" ><h2>��ӭ��ע������ʯ��ƱԤ��ϵͳ</h2></font></marquee></div>
            </div> 
            <div class="a2" >  
                <center>   <form action="checkuser2.jsp" method="post">
            <table>
                <tr><td><font color="green">���֤�ţ�</font></td><td><input type="text" name="user" class="w1" ></td></tr>
                 <tr><td><font color="green">���룺</font></td><td><input type="password" name="password" class="w1" ></td></tr>
                 <tr><td><font color="green">ȷ�����룺</font></td><td><input type="password" name="password2" class="w1"><br>                    
                  <tr><td colspan="2" align="center"> <br><input type="button" value="ע��" onclick="validate()" class="w2">
                    </td></tr>
            </table> 
                        
        </form>       </center>  
        </div>     
 </div>   

</body>


</html>
