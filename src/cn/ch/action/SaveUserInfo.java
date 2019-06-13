package cn.ch.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.dao.UserDao;

/**
 * Servlet implementation class SaveUserInfo
 */
public class SaveUserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveUserInfo() {
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
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String qmail = request.getParameter("email");
		String pwd = request.getParameter("password");
		boolean result = UserDao.changeInfo(Integer.parseInt(userid), address, phone, qmail);
		if(!pwd.equals("")) {
			boolean result1 = UserDao.changePwd(qmail, pwd);
		}
			
		if(result) {
			response.sendRedirect(path+"/userindex.jsp");
			
		}else {
			out.println("修改失败，请重试");
			response.setHeader("refresh","2;url="+path+"/userinfo.jsp?qmail="+qmail);
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
