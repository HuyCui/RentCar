package cn.ch.action;

import java.io.IOException;
import java.sql.SQLException;
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
 * Servlet implementation class Changepwd
 */
public class Changepwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Changepwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String pwd1 = request.getParameter("pwd1");
		try {
			if(ManagerDao.isExist(new Manager(username, pwd))) {
				ManagerDao.changePwd(username, pwd1);
				String person = (String)request.getSession().getAttribute("manager");
				Log log = new Log(person,"manager","Change password of manager", new Date());
				LogDao.addLog(log);
				response.getWriter().print("true");
			}else {
				response.getWriter().print("false");
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
