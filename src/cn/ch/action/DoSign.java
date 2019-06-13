package cn.ch.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.bean.Manager;
import cn.ch.dao.LogDao;
import cn.ch.dao.ManagerDao;

/**
 * Servlet implementation class DoSign
 */
public class DoSign extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoSign() {
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
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String name = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		if(ManagerDao.addAdmin(new Manager(name, password))) {
			Log log = new Log(name,"manager","A new manager sign up", new Date());
			LogDao.addLog(log);
			out.println("注册成功，3秒后跳转至登录界面......");
			response.setHeader("refresh", "3;url="+path+"/login.jsp");
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
