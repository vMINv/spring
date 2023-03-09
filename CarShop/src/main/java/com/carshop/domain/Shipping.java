package com.carshop.domain;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class Shipping implements Serializable {
	
	private String name;
	
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date date;
	
	private Address address;
	
	public Shipping() {
		this.address = new Address();
	}
}
