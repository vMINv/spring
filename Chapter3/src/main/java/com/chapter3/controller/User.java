package com.chapter3.controller;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class User {
	private String guid, name, userId, password, password2;

	public User() {
	}
}
