package com.carshop.controller;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("serial")
public class Cart implements Serializable {

	private String cartId;
	private Map<String, CartItem> cartItems;
	private int grandTotal;
	
	
	
	public Cart() {
		cartItems = new HashMap<String, CartItem>();
	}



	public Cart(String cartId) {
		this();
		this.cartId = cartId;
	}



	public String getCartId() {
		return cartId;
	}



	public void setCartId(String cartId) {
		this.cartId = cartId;
	}



	public Map<String, CartItem> getCartItems() {
		return cartItems;
	}



	public void setCartItems(Map<String, CartItem> cartItems) {
		this.cartItems = cartItems;
	}



	public int getGrandTotal() {
		return grandTotal;
	}



	public void setGrandTotal(int grandTotal) {
		this.grandTotal = grandTotal;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cartId == null) ? 0 : cartId.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cart other = (Cart) obj;
		if (cartId == null) {
			if (other.cartId != null)
				return false;
		} else if (!cartId.equals(other.cartId))
			return false;
		return true;
	}	
	
	
	public void updateGrandTotal() {
		grandTotal = 0;
		for(CartItem item : cartItems.values()) {
			grandTotal = grandTotal + item.getTotalPrice();
		}
	}
	
	public void addCartItem(CartItem item) {
		String cid = item.getCar().getCid(); //등록할 제품 id 가져오기
	
		//이미 해당 제품이 등록이 되어 있는지 여부 확인
		if (cartItems.containsKey(cid)) {
			CartItem cartItem = cartItems.get(cid);//정보 가져와서
			//개수만 하나 늘려준다. 
			cartItem.setQuantity(cartItem.getQuantity() + item.getQuantity());
			cartItems.put(cid, cartItem); //변경정보 저장
		} else {
			cartItems.put(cid, item); //제품 정보 저장
		}
		
		updateGrandTotal();  //총액 다시 계산
	}
	
	public void removeCartItem(CartItem item) {
		String cid = item.getCar().getCid(); //삭제할 제품 id 가져오기
		cartItems.remove(cid); //해당 제품 삭제
		updateGrandTotal(); //총액 재계산
	}
	
}
