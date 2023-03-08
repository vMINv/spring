package com.carshop.car;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;

@SuppressWarnings("serial")
@AllArgsConstructor
@Data
public class CarDTO implements Serializable {
	//private static final long serialVersionUID = 213;
	
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
