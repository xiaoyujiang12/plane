package util;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ImageServlet extends HttpServlet {
	public ImageServlet() {
		super();
	}
	@Override
	public void destroy() {
		super.destroy(); 
	}
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		int width=78;
		int height=20;
		//创建对象
		BufferedImage bim=new BufferedImage(68,20,BufferedImage.TYPE_INT_RGB);
		//获取图片对象
		Graphics g=bim.getGraphics();
		Random rm=new Random();
		g.setColor(new Color(100,rm.nextInt(150),rm.nextInt(150)));
		g.fillRect(0, 0, width, height);		
		StringBuffer sbf=new StringBuffer("");
		
//输出数字
                char[] array = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
					'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 
					'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
					'u', 'v', 'w', 'x', 'y', 'z'
					};	
	
	//取随机产生的验证码(4位数字和字母的组合) 
	String randStr = "";
	for(int i=0;i<4;i++){
		int pos = Math.round((float)Math.random()*(array.length-1));
		randStr += array[pos];
	}
         g.setColor(Color.black);
	 g.setFont(new Font("", Font.PLAIN, 20));
	  g.drawString(randStr, 10, 17);
//        随机产生100个干扰点，使图象中
		for(int i=0;i<100;i++){
			g.setColor(Color.black);
		    g.setFont(new Font("华文隶书",Font.BOLD|Font.ITALIC,20));
			//int n=rm.nextInt(10);
                        int x = rm.nextInt(width);
		        int y = rm.nextInt(height);
			sbf.append(x);
                        sbf.append(y);
		    g.drawOval(x,y,1,1);
		}
                
		//生成的验证码保存到session中
	      HttpSession session=request.getSession(true);         
	       session.setAttribute("randStr", randStr);
	    //禁止缓存
		response.setHeader("Prama","no-cache");
		response.setHeader("Coche-Control","no-cache");
		response.setDateHeader("Expires",0);
		response.setContentType("image/jpeg");
		//输出图片
		ImageIO.write(bim, "JPG", response.getOutputStream());
		response.getOutputStream().close();
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
	@Override
	public void init() throws ServletException {
	}
}
