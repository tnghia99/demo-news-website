package com.demoweb.dao.impl;

import java.util.List;

import com.demoweb.dao.IUserDAO;
import com.demoweb.mapper.UserMapper;
import com.demoweb.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO{

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
//		String sql = "select * from USER where username = ? and password = ? and status= ?";
		StringBuilder sql = new StringBuilder("select * from USER as U ");
		sql.append("inner join ROLE as R on U.roleid = R.id ");
		sql.append("where username = ? and password = ? and status = ?");
		List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
		return users.isEmpty() ? null : users.get(0);
	}

}
