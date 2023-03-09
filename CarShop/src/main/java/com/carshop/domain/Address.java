package com.carshop.domain;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class Address implements Serializable {
	
	private String detailName;
	private String addressName;
	private String country;
	private String zipCode;
	
	public Address() {

	}
}
