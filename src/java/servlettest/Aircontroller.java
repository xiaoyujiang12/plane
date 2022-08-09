package servlettest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Air;

public class Aircontroller extends HttpServlet {

	private static final long serialVersionUDLIGHTNUMBER = 1L;
    
	public Aircontroller() {
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
			Air air=new Air();
			request.setAttribute("airs", air.getAllAirs());
			request.getRequestDispatcher("list_jstl.jsp").forward(request, response);
		}else if(url.equals("/add.air")){
			String flightnumber=request.getParameter("flightnumber");
			String start=request.getParameter("start");
			String finish=request.getParameter("finish");
			String starttime=request.getParameter("starttime");
                        String finishtime=request.getParameter("finishtime");
			Air air=new Air();
			air.setFlightnumber(flightnumber);
			air.setStart(start);
			air.setFinish(finish);
			air.setStarttime(starttime);
                        air.setFinishtime(finishtime);
			int r=air.addAir();
			if(r==1)
				request.getRequestDispatcher("success.html").forward(request, response);
			else
				request.getRequestDispatcher("failure.html").forward(request, response);
		
		}else if(url.equals("/edit.air")){
			
			String flightnumber=request.getParameter("flightnumber");
			Air air=new Air();
			air.setFlightnumber(flightnumber);
			request.setAttribute("flight", air.getAir());
			request.getRequestDispatcher("edit_jstl.jsp").forward(request, response);
		}else if(url.equals("/edit_do.air")){
			
                        String flightnumber=request.getParameter("flightnumber");
			String start=request.getParameter("start");
			String finish=request.getParameter("finish");
			String starttime=request.getParameter("starttime");
                        String finishtime=request.getParameter("finishtime");
			Air air=new Air();
			air.setFlightnumber(flightnumber);
			air.setStart(start);
			air.setFinish(finish);
			air.setStarttime(starttime);
                        air.setFinishtime(finishtime);
			int r=air.updateAir();
			if(r==1)
				request.getRequestDispatcher("success.html").forward(request, response);
			else
				request.getRequestDispatcher("failure.html").forward(request, response);
		
		}else if(url.equals("/del.air")){
		
			String flightnumber=request.getParameter("id");
			Air air=new Air();
			air.setFlightnumber(flightnumber);
			int r=air.delAir();
			if(r==1)
				request.getRequestDispatcher("success.html").forward(request, response);
			else
				request.getRequestDispatcher("failure.html").forward(request, response);
		}
	}
}
