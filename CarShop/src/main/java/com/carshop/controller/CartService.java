package com.carshop.controller;

public interface CartService {

	Cart create(Cart cart);
	Cart read(String cartId);
	void update(String cartId, Cart cart);
	void delete(String cartId);
}
