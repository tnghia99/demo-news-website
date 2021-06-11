package com.demoweb.service;

import java.util.List;

import com.demoweb.model.NewsModel;
import com.demoweb.paging.Pageable;

public interface INewsService {
	List<NewsModel> findByCategoryId(Long categoryId);
	NewsModel save(NewsModel news);
	NewsModel update(NewsModel updateNews);
	void delete(long[] ids);
	List<NewsModel> findAll(Pageable pageable);
	int getTotalItem();
}
