package com.demoweb.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.demoweb.dao.ICategoryDAO;
import com.demoweb.model.CategoryModel;
import com.demoweb.service.ICategoryService;

public class CategoryService implements ICategoryService{

	@Inject
	private ICategoryDAO categoryDAO;
	
	@Override
	public List<CategoryModel> findAll() {
		return categoryDAO.findAll();
	}
}
