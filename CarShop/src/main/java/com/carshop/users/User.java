package com.carshop.users;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class User {
	
	private int uno, enabled;
	
	private String username, password, authority, uname, uemail;
	
	public User(){
		
	}
}
