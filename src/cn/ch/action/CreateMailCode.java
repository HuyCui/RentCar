package cn.ch.action;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.util.MailUtil;

/**
 * Servlet implementation class CreateMailCode
 */
public class CreateMailCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateMailCode() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String qmail = request.getParameter("mail");
		System.out.println(qmail);
		String code="";
		Random r = new Random();
		for(int i = 4; i > 0; i--) {
			code += r.nextInt(10);
		}
		Cookie cookie = new Cookie("usercode", code);
		response.addCookie(cookie);
		code = "<div style=\"width:50%;height:30%;text-align:center\"><div ><font size=40>您的登录验证码为</font><br><font size=40>"+code+"</font></div></div>";
		MailUtil.sendMessage("登录我们的系统", qmail, code);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
