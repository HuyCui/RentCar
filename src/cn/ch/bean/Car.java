package cn.ch.bean;

public class Car {
	@Override
	public String toString() {
		return "Car [carid=" + carid + ", carNumber=" + carNumber + ", describe=" + describe + ", price=" + price
				+ ", model=" + model + ", image=" + image + ", state=" + state + "]";
	}
	private int carid;
	private String carNumber;
	private String describe;
	private double price;
	private String model;
	private String image;
	private int state;
	public Car() {
		super();
	}

	public Car(int carid, String carNumber, String describe, double price, String model, String image,int state) {
		super();
		this.carid = carid;
		this.carNumber = carNumber;
		this.describe = describe;
		this.price = price;
		this.model = model;
		this.image = image;
		this.state = state;
	}
	
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public String getCarNumber() {
		return carNumber;
	}
	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
