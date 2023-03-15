package com.spring.controller;

import java.util.List;
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

	@Override
	public Map<String, Object> detail(Map<String, Object> map) {
		
		return this.bookRepository.selectDetail(map);
	}

	@Override
	public boolean update(Map<String, Object> map) {
		
		int affectRowCount = this.bookRepository.update(map);
		
		return affectRowCount == 1;
	}

	@Override
	public List<Map<String, Object>> list(Map<String, Object> map) {
		
		return this.bookRepository.selectList(map);
	}

	@Override
	public boolean delete(Map<String, Object> map) {

		int result = this.bookRepository.delete(map);
		
		return result == 1;
	}

}
