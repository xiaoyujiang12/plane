package servlettest;

import bean.Jip;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Jipiao extends HttpServlet {

	private static final long serialVersionUID= 1L;
    
	public Jipiao() {
        super();
    }
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String url=request.getServletPath();
		if(url.equals("/index.air")){
			Jip jip=new Jip();
			request.setAttribute("jips", jip.getAllJips());
			request.getRequestDispatcher("list_jstl.jsp").forward(request, response);
		}else if(url.equals("/add.air")){
			String aflightnumber=request.getParameter("aflightnumber");
			String aseat=request.getParameter("aseat");
			String price=request.getParameter("price");

			Jip jip=new Jip();
			jip.setAflightnumber(aflightnumber);
			jip.setAseat(aseat);
			jip.setPrice(price);
		
			int r=jip.addJip();
			if(r==1)
				request.getRequestDispatcher("success.html").forward(request, response);
			else
				request.getRequestDispatcher("failure.html").forward(request, response);
		
		}else if(url.equals("/edit.air")){
			
			String aflightnumber=request.getParameter("aflightnumber");
			Jip jip=new Jip();
			jip.setAflightnumber(aflightnumber);
			request.setAttribute("airticket", jip.getJip());
			request.getRequestDispatcher("edit_jstl.jsp").forward(request, response);
		}else if(url.equals("/edit_do.air")){
			
                        String aflightnumber=request.getParameter("aflightnumber");
			String aseat=request.getParameter("aseat");
			String price=request.getParameter("price");
			Jip jip=new Jip();
			jip.setAflightnumber(aflightnumber);
			jip.setAseat(aseat);
			jip.setPrice(price);
			
			int r=jip.updateJip();
			if(r==1)
				request.getRequestDispatcher("success.html").forward(request, response);
			else
				request.getRequestDispatcher("failure.html").forward(request, response);
		
		}else if(url.equals("/del.air")){
		
			String flightnumber=request.getParameter("frightnumber");
			Jip air=new Jip();
			air.setAflightnumber(flightnumber);
			int r=air.delJip();
			if(r==1)
				request.getRequestDispatcher("success.html").forward(request, response);
			else
				request.getRequestDispatcher("failure.html").forward(request, response);
		}
	}
}
