<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>News List</title>
</head>

<body>

	<div class="main-content">
		<form action="<c:url value= '/admin-news'/>" id="formSubmit"
			method="get">
			<div class="breadcrumbs ace-save-state" id="breadscrumbs">
				<ul class="breadscrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home
							page</a></li>
				</ul>
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<div class="widget-box table-filter">
							<div class="table-btn-controls">
								<div class="pull-right tableTools-container">
									<div class="dt-buttons btn-overlap btn-group">
										<a flag="info"
										   class= "dt-buttons buttons-colvis btn btn-white btn-primary btn-bold"
										   data-toggle="tooltip"
										   title='Add new post' href='<c:url value="/admin-news?type-edit"/>'>
										   		<span>
										   			<i class="fa fa-plus-circle bigger-110 purple"></i>
										   		</span> 
										</a>
										<button id="btnDelete" type="button"
												class="dt-button button-html5 btn btn-white btn-primary btn-bole" 
												data-toggle="tooltip"
												title = 'Delete post' href='<c:url value="/admin-news?type-delete"/>'>
										   		<span>
										   			<i class="fa fa-trash-o bigger-110 pink"></i>
										   		</span> 
										</button>
									</div>
								</div>
							</div>
						</div>
					
					
						<div class="row">
							<div class="col-xs-12">
								<div class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Title</th>
												<th>Content</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${model.listResult}">
												<tr>
													<td>${item.title}</td>
													<td>${item.content}</td>
													<td>
														<c:url var="editURL" value="/admin-news">
															<c:param name="type" value="edit"/>
															<c:param name="id" value="${item.id}"/>
														</c:url>
														<a class="btn btn-sm btn-primary btn-edit"
														   data-toggle="tooltip"
														   title="Update post" 
														   href='${editURL}'>
														   		<i class="fa fa-pencil-square-o" area-hiddent="true"></i>
														</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<ul class="pagination" id="pagination"></ul>
									<input type="hidden" value="" id="page" name="page" /> 
									<input type="hidden" value="" id="maxPageItem" name="maxPageItem" />
									<input type="hidden" value="" id="sortName" name="sortName" />
									<input type="hidden" value="" id="sortBy" name="sortBy" />
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		var currentPage = ${model.page}
		var totalPage = ${model.totalPage}
		var limit = 2;
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPage,
				visiblePages : 10,
				startPage : currentPage,
				onPageClick : function(event, page) {
					/* console.info(page + ' (from options)'); */
					if (currentPage != page) {
						$('#page').val(page);
						$('#maxPageItem').val(limit);
						$('#sortName').val('title');
						$('#sortBy').val('DESC');
						$('#formSubmit').submit();
					}

				}
			});
		});
	</script>
</body>

</html>