package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class jipiaoindex_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>机票信息管理系统</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/air.css\" type=\"text/css\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .a{width: 1000px;height: 400px;margin: 0 auto; }\n");
      out.write("            .b{background-color: paleturquoise;margin-top: 0px;height: 100px;padding-top: 10px;margin-bottom: 0px; width: 1000px;}   \n");
      out.write("            .b1{background-color: pink;padding-top:3px;margin-top: 3px;;height:300px;padding-bottom: 0px;width: 1000px;}\n");
      out.write("            .b2{background-color: #ccffff}\n");
      out.write("            table{\n");
      out.write("                border-collapse:collapse;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"a\">\n");
      out.write("            <div class=\"b\"><h2 align=\"center\">机票信息管理</h2>\n");
      out.write("            <div class=\"b1\">\n");
      out.write("              <p align=\"center\"><a href=\"jipiaoadd.html\"><font size=\"4px\">添加机票信息</a></p>\n");
      out.write("        ");
      bean.Jip jip = null;
      synchronized (_jspx_page_context) {
        jip = (bean.Jip) _jspx_page_context.getAttribute("jip", PageContext.PAGE_SCOPE);
        if (jip == null){
          jip = new bean.Jip();
          _jspx_page_context.setAttribute("jip", jip, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        <table align=\"center\" width=\"50%\" border=\"1\" >\n");
      out.write("            <tr><th>航班号</th><th>座位号</th><th>价格</th><th>操作</th></tr>\n");
      out.write("          ");

                ArrayList jips=(ArrayList)jip.getAllJips();
                for(Object o:jips){
                    Map m = (HashMap)o;
                    
      out.write("\n");
      out.write("              \n");
      out.write("             <tr>\n");
      out.write("                    <td>");
      out.print(m.get("aflightnumber") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(m.get("aseat") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(m.get("price") );
      out.write("</td>\n");
      out.write("      \n");
      out.write("                     <td><a href=\"jipiaoedit.jsp?aflightnumber=");
      out.print(m.get("aflightnumber"));
      out.write("\"><font size=\"+1\" color=\"green\">修改</font></a>&nbsp;\n");
      out.write("                        <a href=\"jipiaodel.jsp?aflightnumber=");
      out.print(m.get("aflightnumber"));
      out.write(" and aseat=");
      out.print(m.get("aseat"));
      out.write("\" onclick=\"return confirm('确定要删除吗？')\">删除</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");
   } 
      out.write("\n");
      out.write("        </table>\n");
      out.write("              <center>  <br><br>  <a href=\"index.jsp\"> <font color='blue' size='-1'>返回航班信息管理</font></a> </center>\n");
      out.write("           </div></div></div>\n");
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
