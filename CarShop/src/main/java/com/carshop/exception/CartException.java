package com.carshop.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;

@SuppressWarnings("serial")
@AllArgsConstructor
public class CartException extends RuntimeException{
	
	@Getter
	private String cartId;
	
}
