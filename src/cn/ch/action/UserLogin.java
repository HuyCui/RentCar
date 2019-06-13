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
import cn.ch.dao.UserDao;

/**
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = request.getContextPath();
		response.setContentType("text/html;charset=utf-8");
		//response.setContentType("application/text; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String name = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		String ccode = (String)request.getParameter("usercode");
		String code = "";
		System.out.println(ccode);
		System.out.println("password="+password);
		
		if(password.equals("")) {
			Cookie[] cookies = request.getCookies();
			for(Cookie coo:cookies) {
				if(coo.getName().equals("usercode")) {
					code = coo.getValue();
					System.out.println("code from cookie:"+code);
				}
			}
			if(code.equals(ccode)) {
				out.print("true");
				request.getSession().setAttribute("user", name);
				request.getSession().setMaxInactiveInterval(1800);
			}else {
				out.print("false1");
			}
			
		}
		else {
			try {
				boolean x = UserDao.isExist(name, password);
				if(x) {
					out.print("true");
					request.getSession().setAttribute("user", name);
					request.getSession().setMaxInactiveInterval(1800);
				}
				else {
					out.print("false2");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
