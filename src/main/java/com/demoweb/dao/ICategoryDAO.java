package com.demoweb.dao;

import java.util.List;

import com.demoweb.model.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel>{
	List<CategoryModel> findAll();
}
