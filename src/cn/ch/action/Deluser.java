package cn.ch.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.dao.LogDao;
import cn.ch.dao.UserDao;

/**
 * Servlet implementation class Deluser
 */
public class Deluser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deluser() {
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
		String x = request.getParameter("id");
		out.print(x);
		boolean rst = UserDao.deleteUser(Integer.parseInt(x));
		if(rst) {
			String person = (String)request.getSession().getAttribute("manager");
			Log log = new Log(person,"users","Delete a user", new Date());
			LogDao.addLog(log);
			response.sendRedirect(path+"/users.jsp");
		}else {
			out.println("修改失败，请重试");
			response.setHeader("refresh", "2;url="+path+"/users.jsp");
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
