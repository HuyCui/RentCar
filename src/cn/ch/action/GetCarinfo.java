package cn.ch.action;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import cn.ch.bean.Order;
import cn.ch.dao.OrderDao;

/**
 * Servlet implementation class GetCarinfo
 */
public class GetCarinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCarinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String carid = request.getParameter("carid");
		Order order = OrderDao.getByCarid(Integer.parseInt(carid));
		SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
		JSONObject obj = new JSONObject();
		obj.put("orderid", order.getOrderid());
		obj.put("userid", order.getUserid());
		obj.put("stime", ft.format(order.getStarttime()));
		obj.put("rtime", ft.format(order.getReturntime()));
		response.getWriter().print(obj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
