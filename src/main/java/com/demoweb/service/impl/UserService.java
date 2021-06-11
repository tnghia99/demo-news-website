package com.demoweb.service.impl;

import javax.inject.Inject;

import com.demoweb.dao.IUserDAO;
import com.demoweb.model.UserModel;
import com.demoweb.service.IUserService;

public class UserService implements IUserService{
	
	@Inject
	private IUserDAO userDAO;
	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
	}

}
