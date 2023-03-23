package com.semi.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semi.model.User;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void join(User user) {
		this.sqlSessionTemplate.insert("user.insert", user);
	}

}
