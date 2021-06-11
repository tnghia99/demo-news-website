package com.demoweb.dao;

import java.util.List;

import com.demoweb.model.NewsModel;
import com.demoweb.paging.Pageable;

public interface INewsDAO extends GenericDAO<NewsModel> {
	NewsModel findOne(Long id);

	List<NewsModel> findByCategoryId(Long categoryId);

	Long save(NewsModel news);
	
	void update(NewsModel updateNews);
	
	void delete(long id);
	
	List<NewsModel> findAll(Pageable pageable);
	
	int getTotalItem();
}
