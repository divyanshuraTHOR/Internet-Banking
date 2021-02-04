package com.kaushal.demo.model;

import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Entity;
@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String user_id;
	private String accn;
	
	private String mob;
	
	private String amt;
	
	public String getAccn() {
		return accn;
	}
	public void setAccn(String accn) {
		this.accn = accn;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getAmt() {
		return amt;
	}
	public void setAmt(String amt) {
		this.amt = amt;
	}
	private  String password;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}