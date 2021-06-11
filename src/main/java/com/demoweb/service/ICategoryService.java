package com.demoweb.service;

import java.util.List;

import com.demoweb.model.CategoryModel;

public interface ICategoryService {
	List<CategoryModel> findAll();
}
