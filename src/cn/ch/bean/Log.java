package cn.ch.bean;

import java.util.*;

public class Log {
	private int logid;
	private String manager;
	private String table;
	private String action;
	private Date time;
	private String actiontime;
	public Log() {
		super();
	}
	public Log(String manager, String table, String action, Date time) {
		super();
		this.manager = manager;
		this.table = table;
		this.action = action;
		this.time = time;
	}
	
	public Log(int logid, String manager, String table, String action, Date time) {
		super();
		this.logid = logid;
		this.manager = manager;
		this.table = table;
		this.action = action;
		this.time = time;
	}
	public Log(int logid, String manager, String table, String action, String time) {
		super();
		this.logid = logid;
		this.manager = manager;
		this.table = table;
		this.action = action;
		this.actiontime = time;
	}
	
	public String getActiontime() {
		return actiontime;
	}
	public void setActiontime(String actiontime) {
		this.actiontime = actiontime;
	}
	public int getLogid() {
		return logid;
	}
	public void setLogid(int logid) {
		this.logid = logid;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getTable() {
		return table;
	}
	public void setTable(String table) {
		this.table = table;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Log [logid=" + logid + ", manager=" + manager + ", table=" + table + ", action=" + action + ", time="
				+ time + "]";
	}
	
	
	
	
}
