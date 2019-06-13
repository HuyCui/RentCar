package cn.ch.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.dao.CarDao;
import cn.ch.dao.LogDao;
import cn.ch.dao.OrderDao;

/**
 * Servlet implementation class DoReturn
 */
public class DoReturn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoReturn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String orderid = request.getParameter("orderid");
		String carid = request.getParameter("carid");
		//System.out.println(orderid+carid);
		OrderDao.changeStatus(Integer.parseInt(orderid), Integer.parseInt(carid));
		CarDao.changeCarStatus(Integer.parseInt(carid), 1);
		String person = (String)request.getSession().getAttribute("manager");
		Log log = new Log(person,"orders","Return a car", new Date());
		LogDao.addLog(log);
		response.sendRedirect("orders.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
