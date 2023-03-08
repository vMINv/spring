package com.z.controller;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Size;

@AllArgsConstructor
@Data
public class User {
	private String guid;
	
	@Size(min=6, message="Enter at least 6 characters")
	private String name;
	
	@Size(min=6, message="Enter at least 6 characters")
	private String userId;
	
	@Size(min=8, message="Enter at least 8 characters")
	private String password;
	
	@Size(min=8, message="Enter at least 8 characters")
	private String password2;

	public User() {

	}
	
	@AssertTrue(message = "Password fields don't match")
	private boolean isValid() {
		return this.password.equals(this.password2);
	}
	
}
