package cn.ch.bean;

public class User {
	private int userid;
	private String name;
	private String phone;
	private String address;
	private String idcard;
	private String qmail;
	

	public User() {
		super();
	}

	
	public User(int userid, String name, String phone, String address, String idcard, String qmail) {
		super();
		this.userid = userid;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.idcard = idcard;
		this.qmail = qmail;
	}


	@Override
	public String toString() {
		return "User [userid=" + userid + ", name=" + name + ", phone=" + phone + ", address=" + address + ", idcard="
				+ idcard + ", qmail=" + qmail + "]";
	}


	public String getQmail() {
		return qmail;
	}

	public void setQmail(String qmail) {
		this.qmail = qmail;
	}
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	
}
