package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tousu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <title>投诉</title>\n");
      out.write("\t<style>\n");
      out.write("           *{font-family: \"楷体\";} \n");
      out.write("            \t.s3 {\n");
      out.write("                         display: inline-block;\n");
      out.write("                         font-size: 20px;\n");
      out.write("                         cursor: pointer;      \n");
      out.write("                         text-align: center;   \n");
      out.write("                         font-family: \"华文楷体\",\"楷体\";\n");
      out.write("                         background-color: rgb(134,224,247);\n");
      out.write("                         border: none;\n");
      out.write("                         border-radius: 15px;\n");
      out.write("                         box-shadow: 0 9px #999;\n");
      out.write("                         background-color: #4169E1;\n");
      out.write("                         box-shadow: 0 5px #666;\n");
      out.write("                         transform: translateY(4px);\n");
      out.write("                }\n");
      out.write("\t\t.biaoyu{color:#86E0F7;font-family: \"华文楷体\",\"楷体\"}\n");
      out.write("\t\t .top{\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t\theight: 58px;\n");
      out.write("\t\t\tbox-shadow: 2px 5px 6px rgb(239,241,242);\n");
      out.write("\t\t}\n");
      out.write("\t\t.logo{\n");
      out.write("\t\t\twidth: 140px;\n");
      out.write("\t\t\theight: 58px;\n");
      out.write("\t\t\tmargin: 0 150px;\n");
      out.write("\t\t\tfloat: left;\n");
      out.write("\t\t}\n");
      out.write("                .logo2{width: 400px;height: 58px;float: left;margin-right:150px;}\n");
      out.write("\t\t.logo img{\n");
      out.write("\t\t\tfloat: left;\n");
      out.write("\t\t\twidth: 58px;\n");
      out.write("\t\t\theight: 58px;\n");
      out.write("\t\t\tborder-radius: 50%;\n");
      out.write("\t\t}\n");
      out.write("\t\t.top-right{\n");
      out.write("\t\t\twidth: 500px;\n");
      out.write("\t\t\tposition:absolute;\n");
      out.write("\t\t\tright:0px;\n");
      out.write("\t\t\t\n");
      out.write("\t\t}\n");
      out.write("\t\t.top-right a{\n");
      out.write("\t\t\tcolor:black;\n");
      out.write("                        text-decoration: none;\n");
      out.write("\t\t}\n");
      out.write("\t\tdiv[class^=box]{\n");
      out.write("\t\t\tfont-family: \"楷体\";\n");
      out.write("\t\t\theight: 58px;\n");
      out.write("\t\t\tfloat: left;\n");
      out.write("\t\t\tfont-size: 24px;\n");
      out.write("\t\t\tmargin-right: 50px;\n");
      out.write("\t\t\tline-height: 58px;\n");
      out.write("\t\t\tborder-radius: 8px;\n");
      out.write("\t\t}\n");
      out.write("\t\tdiv[class^=box]:hover{\n");
      out.write("\t\t\tbackground: rgb(239,241,242); \n");
      out.write("\t\t}                \n");
      out.write("                 .main{margin: 20px auto; width: 1200px;height:500px; left: 33.2%;top:40%;}\n");
      out.write("        .left{float: left;width:30%; height:500px;background-color: #4169E1;}\n");
      out.write("\t.left ul li{margin-left: 10px;color: black;list-style: none;margin-bottom: 35px;font-size: 20px;}\n");
      out.write("\t.left ul li a{ text-decoration: none;color: black;}\n");
      out.write(" \t.left a:hover{color: aliceblue;}\n");
      out.write("\t.right{float: left;width: 70%;height:500px; background-color:#86E0F7;font-size: 17px;}   \n");
      out.write("\t.cc{ border:1px solid black;float: left;margin-left: 15px;}\n");
      out.write("\t.right ul li{margin-left: 2px;color: black;list-style: none;margin-bottom: 5px;}\n");
      out.write("\t</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
 String path = request.getContextPath();
         String basePath = request.getScheme() + "://"+request.getServerName() + ":"+request.getServerPort() + path +"/";
      out.write("\n");
      out.write("\t<div class=\"top\">\n");
      out.write("\t\t<div class=\"logo\">\n");
      out.write("                    <img src=\"images/LOGO.jpg\">\n");
      out.write("\t\t</div>\n");
      out.write("            <div class=\"logo2\"><marquee direct=\"left\" ><font class=\"biaoyu\" size=\"+1\"  ><h2>您好！ ");
      out.print( request.getSession().getAttribute("user") );
      out.write("</h2></font></marquee></div>\n");
      out.write("             <div class=\"top-right\">\n");
      out.write("\t\t\t<div class=\"box1\">\n");
      out.write("\t\t\t\t\t<span><a href=\"zhuyem.html\">返回首页</a></span>\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("            </div>          \n");
      out.write("\t</div>    \n");
      out.write("    \t<div class=\"main\">\n");
      out.write("\t\t<div class=\"left\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("                            <li><h3 style=\"color:#F0F8FF\">感谢您的投诉<br>相信我们会做得更好</h3></li>\n");
      out.write("\t\t\t\t<img src=\"images/邮箱.jpg\" width=100px\" height=\"100px\">\n");
      out.write("                               <li><h4>投诉和建议：</h4></li>\n");
      out.write("\t\t\t\t<li><a href=\"tousu.jsp\">投诉</a></li>\n");
      out.write("\t\t\t\t<li><a href=\"jianyi.jsp\">建议</a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("            <div class=\"right\">               \n");
      out.write("                <ul><li><h1 style=\"color:#2F4F4F\">投诉相关说明：</h1></li></ul>\n");
      out.write("                &nbsp; &nbsp; 1.可打客服电话进行投诉：1234567<br>\n");
      out.write("               &nbsp; &nbsp; 2.提交投诉格式为：文字说明、视频、音频、图片。<br>\n");
      out.write("               &nbsp; &nbsp; 3.符合国家法律、法规、规章有关规定的。<br>\n");
      out.write("               &nbsp; &nbsp; 4.对符合受理条件的投诉，铁路客服人员将于2个工作日内电话联系客户核实处理。<br><br>\n");
      out.write("                  <form action=\"checkuser4.jsp\" method=\"post\" id=\"form1\" name=\"form1\">               \n");
      out.write("               <table  border=\"0\">\n");
      out.write("               <tr><td>&nbsp;&nbsp;您的联系邮箱：</td><td><input type=\"text\" name=\"email\"/></td></tr>\n");
      out.write("               </table>\n");
      out.write("               <table  border=\"0\" >\n");
      out.write("                   <tr><td>&nbsp;&nbsp;请说明您要投诉的内容：</td></tr><tr></tr>\n");
      out.write("                   <tr> <td>&nbsp;&nbsp;<textarea name=\"liuyan\" rows=\"7\" cols=\"57\"></textarea></td></tr>\n");
      out.write("                   <tr><td>&nbsp;&nbsp;<input type=\"submit\" value=\"提交\" class=\"s3\"></td></tr>\n");
      out.write("               </table></form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
