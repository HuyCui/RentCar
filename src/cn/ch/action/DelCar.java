package cn.ch.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.dao.CarDao;
import cn.ch.dao.LogDao;

/**
 * Servlet implementation class DelCar
 */
public class DelCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelCar() {
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
		String id = request.getParameter("carid");
		boolean rst = CarDao.delCar(Integer.parseInt(id));
		if(rst) {
			String person = (String)request.getSession().getAttribute("manager");
			Log log = new Log(person,"cars","Delete a car", new Date());
			LogDao.addLog(log);
			response.sendRedirect("/RentCar/cars.jsp");
		}else {
			response.getWriter().println("修改失败，请重试");
			response.setHeader("refresh", "2;url="+path+"/cars.jsp");
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
