package cn.ch.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.bean.User;
import cn.ch.dao.LogDao;
import cn.ch.dao.UserDao;
import cn.ch.util.MailUtil;

/**
 * Servlet implementation class AddUser
 */
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String idcard = request.getParameter("idcard");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		boolean x = UserDao.addUser(new User(0,name, phone,address,idcard,email));
		if(x) {
			String person = (String)request.getSession().getAttribute("manager");
			Log log = new Log(person,"users","Add a narmal user", new Date());
			LogDao.addLog(log);
			response.sendRedirect("/RentCar/users.jsp");
			MailUtil.sendMessage("小型汽车租赁系统注册成功", email, "您在小型汽车租赁系统的注册已经完成，如果并非您的操作，请忽略该邮件");
			
		}else {
			response.getWriter().print("添加失败，将返回用户管理页面");
			response.setHeader("refresh", "1;url=/RentCar/users.jsp");
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
