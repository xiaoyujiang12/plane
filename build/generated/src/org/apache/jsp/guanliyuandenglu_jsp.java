package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class guanliyuandenglu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write(" ");

    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
      out.write("\n");
      out.write("<html>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        function reloadImage(t){t.src=\"./ImageServlet?flag=\"+Math.random();\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("           <head>\n");
      out.write("               <title>管理员登录页面</title>\n");
      out.write("               <style>\n");
      out.write("                     body{\n");
      out.write("\t\tbackground: url(\"images/66.jpg\") no-repeat center center fixed;\n");
      out.write("                -webkit-background-size: cover;\n");
      out.write("                -o-background-size: cover;                \n");
      out.write("                background-size: cover;\n");
      out.write("\t        }\n");
      out.write("                   .biaoyu{color:#00A6DA;font-family: \"华文楷体\",\"楷体\"}\n");
      out.write("                   .top{\n");
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
      out.write("                .a2{\n");
      out.write("                    padding-top: 70px;\n");
      out.write("                }\n");
      out.write("                .w1{width: 150px;height: 30px;}\n");
      out.write("                form{\n");
      out.write("                    width: 500px;\n");
      out.write("                    height:300px;\n");
      out.write("/*                    background-color: #F5EAE8;*/\n");
      out.write("                    padding: 30px 40px;border: 1px soild #F5EAE8;\n");
      out.write("                }\n");
      out.write("               </style>\n");
      out.write("           \n");
      out.write("        <base href = \"< % = basePath %>\">\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("  <div class=\"index\">\n");
      out.write("\t<div class=\"top\">\n");
      out.write("\t\t<div class=\"logo\">\n");
      out.write("                    <img src=\"images/LOGO.jpg\">\n");
      out.write("\t\t</div>\n");
      out.write("            <div class=\"logo2\"><marquee direct=\"left\" ><font size=\"+1\" class=\"biaoyu\"><h2>管理员登录</h2></font></marquee></div>\n");
      out.write("            </div> \n");
      out.write("            <div class=\"a2\" >  \n");
      out.write("                <center>   <form action=\"checkuser3.jsp\" method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr><td><font color=\"green\">身份证号：</font></td><td><input type=\"text\" name=\"user\" class=\"w1\"></td></tr>\n");
      out.write("                 <tr><td><font color=\"green\">密码：</font></td><td><input type=\"password\" name=\"password\" class=\"w1\"></td></tr>\n");
      out.write("                 <tr><td><font color=\"green\">验证码：</font></td><td><input type=\"text\" name=\"checkcode\" class=\"w1\">\n");
      out.write("                         <img src=\"./ImageServlet\" align=\"middle\" alt=\"看不清，请点这里！\" onclick=\" reloadImage(this)\"></td></tr>\n");
      out.write("                 <tr><td colspan=\"2\" align=\"center\"><input type=\"submit\" value=\"登录\"</td></tr>\n");
      out.write("            </table> \n");
      out.write("        </form>       </center>  \n");
      out.write("        </div>     \n");
      out.write(" </div>        \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
