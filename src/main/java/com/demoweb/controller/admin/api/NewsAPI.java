package com.demoweb.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demoweb.model.NewsModel;
import com.demoweb.model.UserModel;
import com.demoweb.service.INewsService;
import com.demoweb.utils.HttpUtil;
import com.demoweb.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = { "/api-admin-news"})
public class NewsAPI extends HttpServlet{
	
	@Inject
	private INewsService newsService;
	
	private static final long serialVersionUID = -9158666492079630569L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		NewsModel newsModel = HttpUtil.of(req.getReader()).toModel(NewsModel.class);
		newsModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUserName());
		newsModel = newsService.save(newsModel);
		mapper.writeValue(resp.getOutputStream(), newsModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		NewsModel updateNews = HttpUtil.of(req.getReader()).toModel(NewsModel.class);
		updateNews.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUserName());
		updateNews = newsService.update(updateNews);
		mapper.writeValue(resp.getOutputStream(), updateNews);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		NewsModel deleteNews = HttpUtil.of(req.getReader()).toModel(NewsModel.class);
		newsService.delete(deleteNews.getIds());
		mapper.writeValue(resp.getOutputStream(), "{}");
	}
	
}
