package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookRepository bookRepository;

	@Override
	public String create(Map<String, Object> map) {
		
		int affectRowCount = this.bookRepository.insert(map);
		
		if(affectRowCount==1) {//insert 성공시 1, 실패시 0 
			return map.get("book_id").toString();
		}
		return null;
	}

}
