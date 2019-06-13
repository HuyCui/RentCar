package cn.ch.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.dao.CarDao;

/**
 * Servlet implementation class ChangeCarinfo
 */
public class ChangeCarinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeCarinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String carid = request.getParameter("carid1");
		String desc = request.getParameter("describe1");
		String price = request.getParameter("price1");
		boolean rst = CarDao.changeCarinfo(Integer.parseInt(carid), desc, Double.parseDouble(price));
		if(rst) {
			response.sendRedirect("/RentCar/cars.jsp");
		}else {
			response.getWriter().print("修改失败，请重试");
			response.setHeader("refresh", "2;url=/RentCar/cars.jsp");
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
