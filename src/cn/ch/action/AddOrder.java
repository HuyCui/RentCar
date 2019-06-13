package cn.ch.action;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.bean.Order;
import cn.ch.bean.User;
import cn.ch.dao.CarDao;
import cn.ch.dao.LogDao;
import cn.ch.dao.OrderDao;
import cn.ch.dao.UserDao;
import cn.ch.util.MailUtil;

/**
 * Servlet implementation class AddOrder
 */
public class AddOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String carid = request.getParameter("carid");
		String userid = request.getParameter("userid");
		String starttime = request.getParameter("starttime");
		String returntime = request.getParameter("returntime");
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date stime = sdf.parse(starttime);
			Date rtime = sdf.parse(returntime);
			User user = UserDao.getByID(Integer.parseInt(userid));
			OrderDao.addOrder(new Order(0, Integer.parseInt(carid), Integer.parseInt(userid), stime, rtime, 0, 0));
			CarDao.changeCarStatus(Integer.parseInt(carid), 0);
			String person = (String)request.getSession().getAttribute("manager");
			Log log = new Log(person,"orders","Add a order", new Date());
			LogDao.addLog(log);
			response.sendRedirect("/RentCar/orders.jsp");
			MailUtil.sendMessage("租车成功", user.getQmail(), 
					"您在本公司已办理租车服务，可以登录个人账户查看租车信息<a href='http://localhost:8080/RentCar/userlogin.jsp'>点此登录</a>");
		} catch (ParseException | NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		System.out.println(starttime+"------"+returntime);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
