package com.carshop.controller;

import java.io.Serializable;

import com.carshop.car.CarDTO;

import lombok.AllArgsConstructor;
import lombok.Data;

public class CartItem implements Serializable {
	private CarDTO car;    //자동차
	private int quantity;  //자동차 개수
	private int totalPrice;//자동차 가격
	
	public CarDTO getCar() {
		return car;
	}

	public void setCar(CarDTO car) {
		this.car = car;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
		this.updateTotalPrice();
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public CartItem(CarDTO car, int quantity, int totalPrice) {
		super();
		this.car = car;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}

	public CartItem() {
		super();
	}
	
	public CartItem(CarDTO car) {
		this.car = car;
		this.quantity = 1;
		this.totalPrice = Integer.parseInt(car.getCprice());
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartItem other = (CartItem) obj;
		if (car == null) {
			if (other.car != null)
				return false;
		} else if (!car.equals(other.car))
			return false;
		if (quantity != other.quantity)
			return false;
		if (totalPrice != other.totalPrice)
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((car == null) ? 0 : car.hashCode());
		result = prime * result + quantity;
		result = prime * result + totalPrice;
		return result;
	}
	
	public void updateTotalPrice() {
		totalPrice = (Integer.parseInt(this.car.getCprice()))*this.quantity;
	}
}
