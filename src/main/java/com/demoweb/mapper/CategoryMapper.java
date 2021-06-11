package com.demoweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.demoweb.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel>{

	@Override
	public CategoryModel mapRow(ResultSet rs) {
		try {
			CategoryModel category = new CategoryModel();
			category.setId(rs.getLong("id"));
			category.setCode(rs.getString("code"));
			category.setCategoryName(rs.getString("name"));
			return category;
		} catch (SQLException e) {
			return null;
		}
		
	}
	
}
