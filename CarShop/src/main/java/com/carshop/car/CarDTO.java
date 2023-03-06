package com.carshop.car;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class CarDTO {
	
	private String cid, cname, cprice, ccate, cdesc;

	private MultipartFile cimage;
	
	public CarDTO() {

	}

	public CarDTO(String cid, String cname, String cprice, String ccate, String cdesc) {

		this.cid = cid;
		this.cname = cname;
		this.cprice = cprice;
		this.ccate = ccate;
		this.cdesc = cdesc;
	}

}
