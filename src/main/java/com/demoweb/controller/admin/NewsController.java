package com.demoweb.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demoweb.constant.SystemConstant;
import com.demoweb.model.NewsModel;
import com.demoweb.paging.PageRequest;
import com.demoweb.paging.Pageable;
import com.demoweb.service.ICategoryService;
import com.demoweb.service.INewsService;
import com.demoweb.sort.Sorter;
import com.demoweb.utils.FormUtil;
import com.demoweb.utils.messageUtil;

@WebServlet(urlPatterns = { "/admin-news" })
public class NewsController extends HttpServlet {
	@Inject
	INewsService newsService;

	@Inject
	ICategoryService categoryService;

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NewsModel model = FormUtil.toModel(NewsModel.class, request);
		String view = "";
		if (model.getType().equals(SystemConstant.LIST)) {
			Pageable pageable = new PageRequest(model.getPage(), model.getMaxPageItem(),
					new Sorter(model.getSortName(), model.getSortBy()));
			model.setListResult(newsService.findAll(pageable));
			model.setTotalItem(newsService.getTotalItem());
			model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));

			view = "/views/admin/news/list.jsp";
		} else if (model.getType().equals(SystemConstant.EDIT)) {
			if (model.getId() != null) {
				model = newsService.findOne(model.getId());

			} else {

			}
			request.setAttribute("categories", categoryService.findAll());
			view = "/views/admin/news/edit.jsp";
		}
		messageUtil.displayMessage(request);
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
