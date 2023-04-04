package com.church.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.church.domain.Users;
import com.church.mapper.UsersMapper;

@Service
public class UsersServiceImpl implements UsersService {
	
	@Autowired
	UsersMapper usersMapper;
	
	public List<Users> listUser() {
		return usersMapper.listUser();
	}
}
