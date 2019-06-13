package cn.ch.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Car;
import cn.ch.bean.Log;
import cn.ch.dao.CarDao;
import cn.ch.dao.LogDao;

/**
 * Servlet implementation class AddCar
 */
public class AddCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String carid = request.getParameter("carid");
		String desc = request.getParameter("desc");
		String price = request.getParameter("price");
		String model = request.getParameter("model");
		boolean rst = CarDao.addACar(new Car(1,carid, desc, Double.parseDouble(price), model, "", 1));
		String imagepath = "images/"+(String)request.getServletContext().getAttribute("imagepath");
		System.out.println(imagepath+"+++"+carid);
		CarDao.addCarImage(carid, imagepath);
		String person = (String)request.getSession().getAttribute("manager");
		Log log = new Log(person,"car","Add a new car", new Date());
		LogDao.addLog(log);
		if(rst) {
			response.getWriter().print("true");
		}else {
			response.getWriter().print("false");
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
