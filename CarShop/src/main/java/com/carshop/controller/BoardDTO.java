package com.carshop.controller;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class BoardDTO {
	String btitle, bcontent, bauthor, date;
	
	BoardDTO(){
		
	}
}
