package com.cn.yantu.service;

import com.cn.yantu.domain.User;

public interface IUserService {
	
	int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);
    
    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User selectUserByUsernameAnaPassword(User u);
}
