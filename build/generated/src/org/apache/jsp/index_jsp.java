package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>航班信息管理系统</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/air.css\" type=\"text/css\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            .a{width: 1000px;height: 800px;margin: 0 auto;}\n");
      out.write("            .b{background-color: #00A6DA;margin-top: 0px;height: 65px;padding-top: 10px;margin-bottom: 0px; width: 1000px;}   \n");
      out.write("            .b1{background-color:#E7CDCC;padding-top: 0px;margin-top: 0;height:700px;padding-bottom: 0px;width: 1000px;}\n");
      out.write("            .b2{background-color:#00A6DA;height:30px; text-align: center;  }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            <div class=\"a\">\n");
      out.write("\t<div class=\"b\"><h2 align=\"center\">航班信息管理</h2>\n");
      out.write("            <div class=\"b1\">\n");
      out.write("                <div class=\"b2\">   \n");
      out.write("                    <p align=\"center\">\n");
      out.write("                       <a href=\"add.html\"><font size=\"4px\">添加航班信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <a href=\"liuyanban.jsp\"><font size=\"4px\">查看留言板信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <a href=\"jipiaoindex.jsp\"><font size=\"4px\">查看机票信息系统</a>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("        ");
      bean.Air air = null;
      synchronized (_jspx_page_context) {
        air = (bean.Air) _jspx_page_context.getAttribute("air", PageContext.PAGE_SCOPE);
        if (air == null){
          air = new bean.Air();
          _jspx_page_context.setAttribute("air", air, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        <table align=\"center\" width=\"50%\" border=\"1\"><br>\n");
      out.write("            <tr><th>航班号</th><th>起飞地</th><th>目的地</th><th>起飞时间</th><th>到达时间</th><th>操作</th></tr>\n");
      out.write("            ");

                ArrayList airs=(ArrayList)air.getAllAirs();
                for(Object o:airs){
                    Map m = (HashMap)o;
                    
      out.write("\n");
      out.write("              \n");
      out.write("             <tr>\n");
      out.write("                    <td>");
      out.print(m.get("flightnumber") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(m.get("start") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(m.get("finish") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(m.get("starttime") );
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(m.get("finishtime") );
      out.write("</td>\n");
      out.write("                     <td><a href=\"edit.jsp?flightnumber=");
      out.print(m.get("flightnumber"));
      out.write("\"><font size=\"+1\" color=\"green\">修改</font></a>&nbsp;\n");
      out.write("                        <a href=\"del.jsp?flightnumber=");
      out.print(m.get("flightnumber"));
      out.write("\" onclick=\"return confirm('确定要删除吗？')\">删除</a></td>\n");
      out.write("                </tr>");
   } 
      out.write("\n");
      out.write("        </table>\n");
      out.write("           </div></div></div>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
