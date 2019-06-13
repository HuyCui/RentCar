package cn.ch.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.ch.bean.Log;
import cn.ch.dao.LogDao;
import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

/**
 * Servlet implementation class Page
 */
public class Page extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Page() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cpage = request.getParameter("currpage");
		String limit = request.getParameter("limit");
		List<Log> list = new ArrayList<Log>();
		list = LogDao.getPageList((Integer.parseInt(cpage)-1)*Integer.parseInt(limit), Integer.parseInt(limit));
		/*
		 * JsonConfig js=new JsonConfig(); //js.setExcludes(new
		 * String[]{"treeroles","handler","hibernateLazyInitializer"});
		 * js.setExcludes(new String[]{"treeroles"});
		 */
		
		JSONArray jarray = JSONArray.fromObject(list);
		response.getWriter().write(jarray.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
