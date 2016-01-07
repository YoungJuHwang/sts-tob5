package com.tob.admin;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component

public class AdminVO implements Serializable {
	private static final long serialVersionUID = 1L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	 
	private String id;
	private String password;
	
	private static AdminVO instance = new AdminVO();
	public static AdminVO getInstnace(){
		return instance;
	}

	public AdminVO() {
	}
	public AdminVO(String id,String password) {
		this.id = id;
		this.password = password;
	}
	
	public String getId() {
		return id;
	}
	public String getPassword() {
		return password;
	}
	
	
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}

