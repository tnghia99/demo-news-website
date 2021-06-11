package com.demoweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.demoweb.model.NewsModel;

public class NewsMapper implements RowMapper<NewsModel> {

	@Override
	public NewsModel mapRow(ResultSet rs) {
		try {
			NewsModel news = new NewsModel();
			news.setId(rs.getLong("id"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setCategoryId(rs.getLong("categoryid"));
			news.setThumbnail(rs.getString("thumbnail"));
			news.setShortDescription(rs.getString("shortdescription"));
			news.setCreatedBy(rs.getString("createdby"));
			news.setCreatedDate(rs.getTimestamp("createddate"));
			if(rs.getTime("modifieddate")!=null) {
				news.setModifiedDate(rs.getTimestamp("modifieddate"));;
			}
			if(rs.getTime("modifiedby")!=null) {
				news.setModifiedBy(rs.getString("modifiedby"));;
			}
			return news;
		} catch (SQLException e) {
			return null;
		}
	}

}
