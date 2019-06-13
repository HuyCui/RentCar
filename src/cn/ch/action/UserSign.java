package cn.ch.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.User;
import cn.ch.dao.UserDao;

/**
 * Servlet implementation class UserSign
 */
public class UserSign extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserSign() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String qmail = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String idcard = request.getParameter("idcard");
		User user = new User(0, name, "", "", idcard, qmail);
		UserDao.addUser(user);
		UserDao.addUserPwd(qmail, password);
		response.sendRedirect("/RentCar/userlogin.jsp?qmail="+qmail);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
