package com.church.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.church.domain.Users;

public interface UsersMapper {

	@Select("select * from users")
	List<Users> listUser();

}
