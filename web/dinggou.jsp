<%-- 
    Document   : dinggou
    Created on : 2021-12-14, 8:43:39
    Author     : 11758
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="gbk"%>
<%@page import="java.util.*" %>
<html>
           <head>
               <script type="text/javascript">
    function validate()
    {
    var ss=document.forms[0].ss.value;
    var xm=document.forms[0].xm.value;
    var dh=document.forms[0].dh.value;
    if(ss.length<2){
        alert("������Ϸ����֤�ţ�");//////////////////////////////////////////��֤�û���
    }
    else if(xm.length<2){
        alert("����������λ��");////////////////////////////////////////////��֤����
    }
  else if(dh.length<4){
            alert("�绰��������λ");
            return false;
        }
    else{
        document.forms[0].submit();//////////////////////////////////////�ύ��userrAdd2.jsp
    }
    }
    </script>
               <title>�û�����ҳ��</title>
               <style>
                   .biaoyu{color:#86E0F7;font-family: "���Ŀ���","����"}
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
                    background-color: #F5EAE8;padding: 30px 40px;border: 1px soild #F5EAE8;
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
            <div class="logo2"><marquee direct="left" ><font size="+1" class="biaoyu" ><h2>��ӭ������</h2></font></marquee></div>
            </div> 
            <div class="a2" >  
                <center>   <form method="post" action="dinggou2.jsp">
            <table>
                <tr><td><font color="green">���֤�ţ�</font></td><td><input type="text" name="ss" class="w1" ></td></tr>
                 <tr><td><font color="green">������</font></td><td><input type="text" name="xm" class="w1" ></td></tr>
                 <tr><td><font color="green">�绰��</font></td><td><input type="text" name="dh" class="w1"><br></td></tr>    
                  <tr><td><font color="green">�����</font></td><td><input type="text" name="flightnumber" class="w1"><br></td></tr> 
                 <tr><td colspan="2" align="center"><input type="button" value="����" onclick="validate()"></td></tr>
            </table> 
                        
        </form>       </center>  
        </div>     
 </div>   

</body>


</html>

