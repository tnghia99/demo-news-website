package com.demoweb.dao.impl;

import java.util.List;

import com.demoweb.dao.ICategoryDAO;
import com.demoweb.mapper.CategoryMapper;
import com.demoweb.model.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO{
	
	@Override
	public List<CategoryModel> findAll() {
		String sql = "select * from CATEGORY";
		return query(sql, new CategoryMapper());
	}
}
