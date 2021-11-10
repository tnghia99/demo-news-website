package com.demoweb.dao.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.demoweb.dao.INewsDAO;
import com.demoweb.mapper.NewsMapper;
import com.demoweb.model.NewsModel;
import com.demoweb.paging.Pageable;

public class NewsDAO extends AbstractDAO<NewsModel> implements INewsDAO {

	@Override
	public List<NewsModel> findByCategoryId(Long categoryId) {
		String sql = "select * from NEWS where categoryid = ?";
		return query(sql, new NewsMapper(), categoryId);
	}

	@Override
	public Long save(NewsModel news) {
		StringBuilder sql = new StringBuilder("insert into  NEWS (title, ");
		sql.append("thumbnail, ");
		sql.append("shortdescription, ");
		sql.append("content, ");
		sql.append("categoryid, ");
		sql.append("createddate, ");
		sql.append("createdby) ");
		sql.append("values (?, ?, ?, ?, ?, ?, ?)");

		return insert(sql.toString(), news.getTitle(), news.getThumbnail(), news.getShortDescription(),
				news.getContent(), news.getCategoryId(), news.getCreatedDate(), news.getCreatedBy());
	}

	@Override
	public NewsModel findOne(Long id) {
		String sql = "select * from NEWS where id = ?";
		List<NewsModel> news = query(sql, new NewsMapper(), id);
		return news.isEmpty() ? null : news.get(0);
	}

	@Override
	public void update(NewsModel updateNews) {
		StringBuilder sql = new StringBuilder("update News set title = ?, ");
		sql.append("thumbnail = ?, ");
		sql.append("shortdescription=?, ");
		sql.append("content=?, ");
		sql.append("categoryid=?, ");
		sql.append("createddate=?, ");
		sql.append("createdby=?, ");
		sql.append("modifieddate=?, ");
		sql.append("modifiedby=? ");
		sql.append("where id = ? ");
		update(sql.toString(), updateNews.getTitle(), updateNews.getThumbnail(), updateNews.getShortDescription(),
				updateNews.getContent(), updateNews.getCategoryId(), updateNews.getCreatedDate(),
				updateNews.getCreatedBy(), updateNews.getModifiedDate(), updateNews.getModifiedBy(),
				updateNews.getId());

	}

	@Override
	public void delete(long id) {
		String sql = "delete from NEWS where id = ?";
		update(sql, id);
	}

	@Override
	public List<NewsModel> findAll(Pageable pageable) {
//		String sql = "select * from NEWS limit ?, ?";
		StringBuilder sql = new StringBuilder("select * from NEWS ");
		if (pageable.getSorter()!=null 
				&& StringUtils.isNotBlank(pageable.getSorter().getSortName()) 
				&& StringUtils.isNotBlank(pageable.getSorter().getSortBy())) {
			sql.append("order by " + pageable.getSorter().getSortName() + " " + pageable.getSorter().getSortBy() + " ");
		}
		if (pageable.getOffset() != null && pageable.getLimit() != null) {
			sql.append("limit " + pageable.getOffset() + ", " + pageable.getLimit());
		}
		return query(sql.toString(), new NewsMapper());
	}

	@Override
	public int getTotalItem() {
		String sql = "select count(*) from News";
		return count(sql);
	}

}
