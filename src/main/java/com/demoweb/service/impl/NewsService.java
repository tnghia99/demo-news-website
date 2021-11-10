package com.demoweb.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.demoweb.dao.ICategoryDAO;
import com.demoweb.dao.INewsDAO;
import com.demoweb.model.CategoryModel;
import com.demoweb.model.NewsModel;
import com.demoweb.paging.Pageable;
import com.demoweb.service.INewsService;

public class NewsService implements INewsService{
	@Inject 
	private INewsDAO newsDAO;
	
	@Inject
	private ICategoryDAO categoryDAO;
	
	@Override
	public List<NewsModel> findByCategoryId(Long categoryId) {
		return newsDAO.findByCategoryId(categoryId);
	}
	@Override
	public NewsModel save(NewsModel newsModel) {
		newsModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		CategoryModel category = categoryDAO.findOneByCode(newsModel.getCategoryCode());
		newsModel.setCategoryId(category.getId());
		Long newsId = newsDAO.save(newsModel);
		return newsDAO.findOne(newsId);
	}
	
	public NewsModel update(NewsModel updateNews) {
		NewsModel oldNews = newsDAO.findOne(updateNews.getId());
		updateNews.setCreatedDate(oldNews.getCreatedDate());
		updateNews.setCreatedBy(oldNews.getCreatedBy());
		updateNews.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		CategoryModel category = categoryDAO.findOneByCode(updateNews.getCategoryCode());
		updateNews.setCategoryId(category.getId());
		newsDAO.update(updateNews);
		return newsDAO.findOne(updateNews.getId());
	}
	@Override
	public void delete(long[] ids) {
		for(long id: ids) {
			//delete comment first
			//after that delete news
			newsDAO.delete(id);
		}
	}
	@Override
	public List<NewsModel> findAll(Pageable pageable) {
		return newsDAO.findAll(pageable);
	}
	@Override
	public int getTotalItem() {
		return newsDAO.getTotalItem();
	}
	@Override
	public NewsModel findOne(long id) {
		NewsModel newsModel = newsDAO.findOne(id);
		CategoryModel categoryModel = categoryDAO.findOne(newsModel.getCategoryId());
		newsModel.setCategoryCode(categoryModel.getCode());
		return newsModel;
	}

}
