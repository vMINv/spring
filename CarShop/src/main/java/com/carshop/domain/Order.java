package com.carshop.domain;

import java.io.Serializable;

import com.carshop.controller.Cart;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class Order implements Serializable {
	
	private Long orderId;
	private Cart cart; // 장바구니 객체 
	private Customer customer; // 고객 객체 
	private Shipping shipping; // 배송 객체 
	
	public Order() {
		this.customer = new Customer();
		this.shipping = new Shipping();
	}
}
