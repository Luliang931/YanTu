package com.cn.yantu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.yantu.dao.IUserDao;
import com.cn.yantu.domain.User;
import com.cn.yantu.service.IUserService;
@Service("userService")
public class UserService implements IUserService{
	
	@Autowired
	private IUserDao userDao;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return userDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(User record) {
		return userDao.insert(record);
	}

	@Override
	public int insertSelective(User record) {
		return userDao.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(Integer id) {
		return userDao.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		return userDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		return userDao.updateByPrimaryKey(record);
	}

	@Override
	public User selectUserByUsernameAnaPassword(User u) {
		User user = userDao.selectUserByUsernameAnaPassword(u);
		return user;
	}

}
