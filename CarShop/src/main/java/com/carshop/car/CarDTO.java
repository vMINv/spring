package com.carshop.car;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class CarDTO {
	private String cid, cname, cprice, ccate, cdesc;
	
	CarDTO(){
		
	}
}
