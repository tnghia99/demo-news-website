package com.demoweb.dao;

import java.util.List;

import com.demoweb.mapper.RowMapper;

public interface GenericDAO<T> {
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... params);
	void update(String sql, Object... params);
	Long insert(String sql, Object... params);
	int count(String sql, Object... params);
}
