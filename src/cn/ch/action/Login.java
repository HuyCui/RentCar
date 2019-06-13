package cn.ch.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.bean.Manager;
import cn.ch.dao.LogDao;
import cn.ch.dao.ManagerDao;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String path = request.getContextPath();
		response.setContentType("text/html;charset=utf-8");
		//response.setContentType("application/text; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		System.out.println("in servletlogin");
		String name = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		String ccode = (String)request.getParameter("checkcode");
		String code = "";
		System.out.println(name+password+ccode);
		Cookie[] cookies = request.getCookies();
		if(cookies == null) {
			//out.println("failed");
		}
		for(Cookie coo:cookies) {
			if(coo.getName().equals("checkcode")) {
				code = coo.getValue();
			}
		}
		System.out.println(ccode);
		try {
			if(ManagerDao.isExist(new Manager(name, password))
					&& ccode.toLowerCase().equals(code.toLowerCase())) {
				request.getSession().setAttribute("manager", name);
				request.getSession().setMaxInactiveInterval(1800);
				//response.sendRedirect(path+"/index.jsp");
				System.out.println("login success");
				Log log = new Log(name,"manager","Log in system", new Date());
				LogDao.addLog(log);
				out.print("true");
			}else {
				System.out.println("login failed");
				out.print("false");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
