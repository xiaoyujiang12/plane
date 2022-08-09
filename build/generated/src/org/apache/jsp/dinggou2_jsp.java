package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class dinggou2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      bean.DBcon db = null;
      synchronized (request) {
        db = (bean.DBcon) _jspx_page_context.getAttribute("db", PageContext.REQUEST_SCOPE);
        if (db == null){
          db = new bean.DBcon();
          _jspx_page_context.setAttribute("db", db, PageContext.REQUEST_SCOPE);
        }
      }
      out.write('\n');
 String path = request.getContextPath();
String basePath = request.getScheme() + "://"+request.getServerName() + ":"+request.getServerPort() + path +"/";

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>查询结果</title>\n");
      out.write("         <style>\n");
      out.write("table{ border-collapse: collapse; }\n");
      out.write("th,td{\n");
      out.write("    border: 1px solid #999;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 20px 0;\n");
      out.write("}\n");
      out.write("table thead tr{\n");
      out.write("    background-color: #008c8c;\n");
      out.write("    color: #fff;\n");
      out.write("}\n");
      out.write("table tbody tr:nth-child(odd){\n");
      out.write("    background-color: #eee;\n");
      out.write("}\n");
      out.write("table tbody tr:hover{\n");
      out.write("    background-color: #ccc;\n");
      out.write("}\n");
      out.write("table tfoot tr td{\n");
      out.write("    text-align: right;\n");
      out.write("    padding-right: 20px;\n");
      out.write("}\n");
      out.write("            body{\n");
      out.write("\t\tbackground: url(\"images/背景.jpg\") no-repeat center center fixed;\n");
      out.write("                -webkit-background-size: cover;\n");
      out.write("                -o-background-size: cover;                \n");
      out.write("                background-size: cover;\n");
      out.write("\t        }\n");
      out.write("                 table {\n");
      out.write("            background-color:#FAF0E6 ;\n");
      out.write("            width:800px;\n");
      out.write("            border:1px solid #444;\n");
      out.write("        }\n");
      out.write("                 .top{\n");
      out.write("\t\twidth: 100%;\n");
      out.write("\t\theight: 58px;\n");
      out.write("\t\tbox-shadow: 2px 5px 6px rgb(239,241,242);\n");
      out.write("\t\t}\n");
      out.write("                .biaoyu{color:#0000CD;font-family: \"华文楷体\",\"楷体\"}\n");
      out.write("\t\t.logo{\n");
      out.write("\t\t\twidth: 140px;\n");
      out.write("\t\t\theight: 58px;\n");
      out.write("\t\t\tmargin: 0 150px;\n");
      out.write("\t\t\tfloat: left;\n");
      out.write("\t\t}\n");
      out.write("                .logo2{width: 500px;height: 58px;float: left;margin-right:150px;}\n");
      out.write("\t\t.logo img{\n");
      out.write("\t\t\tfloat: left;\n");
      out.write("\t\t\twidth: 58px;\n");
      out.write("\t\t\theight: 58px;\n");
      out.write("\t\t\tborder-radius: 50%;\n");
      out.write("\t\t}\n");
      out.write("                .a2{ padding-top: 70px; }\n");
      out.write("                .w1{width: 150px;height: 30px;}\n");
      out.write("                .top-right{\n");
      out.write("\t\t\twidth: 500px;\n");
      out.write("\t\t\tposition:absolute;\n");
      out.write("\t\t\tright:0px;\t\t\t\n");
      out.write("\t\t}\n");
      out.write("\t\t.top-right a{color:black;text-decoration: none;}\n");
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
      out.write("\t\t}    \n");
      out.write("               </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div class=\"index\">\n");
      out.write("\t<div class=\"top\">\n");
      out.write("\t\t<div class=\"logo\">\n");
      out.write("                    <img src=\"images/LOGO.jpg\"></div>\n");
      out.write("            <div class=\"logo2\"><marquee direct=\"left\" ><font size=\"+1\"class=\"biaoyu\" ><h2>欢迎您查询云鱼石机票</h2></font></marquee></div>\n");
      out.write("             <div class=\"top-right\">\n");
      out.write("\t\t\t<div class=\"box1\">\n");
      out.write("\t\t\t\t\t<span><a href=\"zhuyem.html\">返回首页</a></span>\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("            </div>  \n");
      out.write("            </div>  \n");
      out.write("      </div><br><br>\n");
      out.write("    <center> \n");
      out.write("       <form action=\"dinggou.jsp\" method=\"post\">   \n");
      out.write("        <table align=\"center\" width=\"70%\" border=\"1\"><tr style=\"background:#2F4F4F;color:#F5FFFA \">\n");
      out.write("                <td>身份证号</td><td>姓名</td><td>电话</td><td>航班号</td><td>出发地</td><td>目的地</td><td>出发时间</td><td>到达时间</td></tr>            \n");
      out.write("           ");

            String ss=request.getParameter("ss");
            String xm=request.getParameter("xm");
            String dh=request.getParameter("dh");
            String flightnumber=request.getParameter("flightnumber");    
            Connection con= db.getConnction();
            Statement stmt=con.createStatement();
            String sql1 = "insert into dinggou values(?,?,?,?)";
            PreparedStatement zhuceQuery=con.prepareStatement(sql1);
            zhuceQuery.setString(1,ss);zhuceQuery.setString(2,xm);zhuceQuery.setString(3,dh);zhuceQuery.setString(4,flightnumber);
            int result=zhuceQuery.executeUpdate();
           
      out.write("\n");
      out.write("           \n");
      out.write("           ");
 String sql = "select ss,xm,dh,dinggou.flightnumber,start,finish,starttime,finishtime from dinggou,flight where dinggou.flightnumber=flight.flightnumber and ss = '" + ss + "' and xm = '" + xm + "' and dh = '" + dh + "' and flight.flightnumber = '" + flightnumber + "'";
            ResultSet rs=stmt.executeQuery(sql);
                
       while (rs.next()) {
             session.setAttribute("ss", ss);
             session.setAttribute("xm", xm);
               session.setAttribute("dh", dh);
             session.setAttribute("flightnumber", flightnumber);
 	
      out.write("\n");
      out.write("             <h2>我的机票信息</h2>\n");
      out.write("             <center><tr>\n");
      out.write("\t<td> ");
      out.print(rs.getString("ss") );
      out.write(" </td>\n");
      out.write("        \t<td> ");
      out.print(rs.getString("xm"));
      out.write(" </td>\n");
      out.write("        \t<td>");
      out.print(rs.getString("dh") );
      out.write("</td>\n");
      out.write("        \t<td>");
      out.print(rs.getString("dinggou.flightnumber") );
      out.write("</td>\n");
      out.write("        \t<td>");
      out.print(rs.getString("start") );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("finish") );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("starttime") );
      out.write("</td>\n");
      out.write("                 <td>");
      out.print(rs.getString("finishtime") );
      out.write("</td>\n");
      out.write("           \n");
      out.write("     \t </tr>\n");
      out.write("      \t");

        	}
      
      out.write("     </table></form>\n");
      out.write("  </center>  </body>\n");
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
