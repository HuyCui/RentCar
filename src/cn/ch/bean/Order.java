package cn.ch.bean;

import java.util.Date;

public class Order {
	
	private int orderid;
	private int carid;
	private int userid;
	private Date starttime;
	private Date returntime;
	private double price;
	private int state;
	
	public Order() {
		super();
	}
	public Order(int orderid, int carid, int userid, Date starttime, Date returntime, double price, int state) {
		super();
		this.orderid = orderid;
		this.carid = carid;
		this.userid = userid;
		this.starttime = starttime;
		this.returntime = returntime;
		this.price = price;
		this.state = state;
	}
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", carid=" + carid + ", userid=" + userid + ", starttime=" + starttime
				+ ", returntime=" + returntime + ", price=" + price + ", state=" + state + "]";
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getReturntime() {
		return returntime;
	}
	public void setReturntime(Date returntime) {
		this.returntime = returntime;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
