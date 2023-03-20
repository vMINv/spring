package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void setNewUser(User user) {
		this.sqlSessionTemplate.insert("users.insert", user);
	}

	@Override
	public List<User> getAllUserList() {
		return this.sqlSessionTemplate.selectList("users.select_list");
	}

	@Override
	public void removeUser(String username) {
		this.sqlSessionTemplate.selectList("users.delete", username);
	}

	@Override
	public void updateAuth(Map<String, Object> auth) {
		this.sqlSessionTemplate.update("users.updateAuth", auth);
	}

	@Override
	public void updateEnabled(Map<String, Object> enable) {
		this.sqlSessionTemplate.update("users.updateEnabled", enable);
	}
}
