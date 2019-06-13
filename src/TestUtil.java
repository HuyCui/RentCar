import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import javax.servlet.ServletContext;

import org.junit.Test;

import cn.ch.bean.*;
import cn.ch.dao.CarDao;
import cn.ch.dao.LogDao;
import cn.ch.dao.ManagerDao;
import cn.ch.dao.OrderDao;
import cn.ch.dao.UserDao;
import cn.ch.util.DBCPUtils;

public class TestUtil {
	@Test
	public void testDBCP() {
		try {
			Connection conn = DBCPUtils.getConnection();
			System.out.println(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testFindManager() throws SQLException {
		boolean flag = ManagerDao.isExist(new Manager("admin", "hello"));
		if(flag) {
			System.out.println("yes");
		}else {
			System.out.println("no");
		}
	}
	@Test
	public void testGetall() throws SQLException {
		List<User> users = UserDao.getAllUsers();
		for(User user:users) {
			System.out.println(user);
		}
	}
	@Test
	public void testGetOne() throws SQLException {
		User user = UserDao.getByID(1);
		System.out.println(user);
	}
	@Test
	public void testinsertAdmin() {
		Manager man = new Manager("哈哈","123465");
		if(ManagerDao.addAdmin(man)) {
			System.out.println("insert successful");
		}else {
			System.out.println("failed");
		}
	}
	@Test
	public void testinsertUser() {
		//int userid, String name, String phone, String address, String idcard
		User user = new User(0,"ceshiyonghu","55666444","淄博市","146131681","956622792@qq.com");
		if(UserDao.addUser(user)) {
			System.out.println("success");
		}else {
			System.out.println("failed");
		}
	}
	@Test
	public void testChange() {
		int id = 2;
		String addr = "use";
		String phone = "987654321";
		String mail = "aaa@qq.com";
		boolean flag = UserDao.changeInfo(id, addr,phone,mail);
		if(flag) {
			System.out.println("change success");
		}else {
			System.out.println("change failed");
		}
	}
	
	@Test
	public void getAllCars() throws SQLException {
		List<Car> cars = CarDao.getAllCars();
		for(Car car:cars) {
			System.out.println(car);
		}
	}
	@Test
	public void insertorder() {
		//int orderid, int carid, int userid, Date starttime, Date returntime, double price
		Date date = new Date();
		Order order = new Order(2,1,1,date,date,100,1);
		boolean result = OrderDao.addOrder(order);
		if(result) {
			System.out.println("success");
		}else {
			System.out.println("failed");
		}
	}
	@Test
	public void getAllOrders() throws SQLException {
		List<Order> orders = OrderDao.getAllOrders();
		for(Order order:orders) {
			System.out.println(order);
			System.out.println(order.getReturntime().getTime());
		}
	}
	@Test
	public void getPrice() {
		try {
			System.out.println(CarDao.getCarPrice(1));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void changestatus() {
		if(OrderDao.changeStatus(5, 1)) {
			System.out.println("change success");
		}else {
			System.out.println("change failed");
		}
	}
	@Test
	public void gettime() {
		SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
		try {
			System.out.println(ft.format(OrderDao.getStarttime(1)));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void getorderinfo() {
		Order order = OrderDao.getByCarid(7);
		System.out.println(order);
		
	}
	@Test
	public void getloglist() {
		List<Log> list = new ArrayList<Log>();
		list = LogDao.getPageList(3, 10);
		int count = LogDao.getcount();
		System.out.println(count);
		System.out.println("-------------------");
		System.out.println(list);
	}
	@Test
	public void getUserOrder() {
		List<Order> orders = new ArrayList<Order>();
		orders = OrderDao.getbyUserid(2);
		System.out.println(orders);
	}
	
}
