package com.demoweb.dao.impl;

import java.util.List;

import com.demoweb.dao.ICategoryDAO;
import com.demoweb.mapper.CategoryMapper;
import com.demoweb.mapper.NewsMapper;
import com.demoweb.model.CategoryModel;
import com.demoweb.model.NewsModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO{
	
	@Override
	public List<CategoryModel> findAll() {
		String sql = "select * from CATEGORY";
		return query(sql, new CategoryMapper());
	}

	@Override
	public CategoryModel findOne(long id) {
		String sql = "select * from CATEGORY where id = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), id);
		return category.isEmpty() ? null : category.get(0);
	}

	@Override
	public CategoryModel findOneByCode(String code) {
		String sql = "select * from CATEGORY where code = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), code);
		return category.isEmpty() ? null : category.get(0);
	}
}
