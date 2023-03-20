package com.carshop.users;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;
	
	@Override
	public void setNewUser(User user) {
		userRepository.setNewUser(user);

	}

	@Override
	public List<User> getAllUserList() {
		return this.userRepository.getAllUserList();
	}

	@Override
	public void removeUser(String username) {
		this.userRepository.removeUser(username);
	}

	@Override
	public void updateAuth(Map<String, Object> auth) {
		this.userRepository.updateAuth(auth);
	}

	@Override
	public void updateEnabled(Map<String, Object> enable) {
		this.userRepository.updateEnabled(enable);
	}

}
