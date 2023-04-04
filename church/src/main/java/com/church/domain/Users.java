package com.church.domain;

import lombok.Data;

@Data
public class Users {
	
	private int uno;
	
	private String id, password, name, email, tel;

	public Users(int uno, String id, String password, String name, String email, String tel) {
		this.uno = uno;
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.tel = tel;
	}
	
	public Users() {
		
	}
	
}
