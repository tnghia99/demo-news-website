<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "/common/taglib.jsp" %>
<c:url var = "APIurl" value = "/api-admin-news"/>
<c:url var = "NewsURL" value = "/admin-news"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Post</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumb" id ="breadcrumb">
				<script type = "text/javascript">
					try{ace.settings.check('breadcrumbs', 'fixed')} catch(e) {}
				</script>
				<ul class="breadcrumb">
					<li>
						<i class="ace-icon fa fa-home home-icon"></i>
						<a href="#">Home Page</a>
					</li>
					<li class="active">Edit Post</li>
				</ul>
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<%-- <c:if test="${not empty message}">
							<div class="alert alert-${alert}">
								${message}
							</div>
						</c:if> --%>
					<c:if test="${not empty messageResponse}">
						<div class="alert alert-${alert}">
  							${messageResponse}
						</div>
					</c:if>
						
						<form id="submitForm" name="submitForm">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Categories</label>
								<div class="col-sm-9">
									<select class="form-control" id="categoryCode" name="categoryCode">
										<c:if test="${empty model.categoryCode}">
											<option value="">Choose category</option>
											<c:forEach var="item" items="${categories}">
												<option value="${item.code}">${item.categoryName}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty model.categoryCode}">
											<option value="">Choose category</option>
											<c:forEach var="item" items="${categories}">
												<option value="${item.code}" <c:if test="${item.code == model.categoryCode}">selected="selected"</c:if>>
													${item.categoryName}
												</option>
											</c:forEach>
										</c:if>
									</select>
								</div>
								<br/>
								<br/>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Title</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="title" name="title" value="${model.title}"/>
								</div>
								<br/>
								<br/>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Thumbnail</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="thumbnail" name="thumbnail" value="${model.thumbnail}"/>
								</div>
								<br/>
								<br/>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Short Description</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="shortDescription" name="shortDescription" value="${model.shortDescription}"/>
								</div>
								<br/>
								<br/>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Content</label>
								<div class="col-sm-9">
									<%-- <input type="text" class="form-control" id="content" name="content" value="${model.content}"/> --%>
									<textarea rows="" cols="" id="content" name="content" style="width:820px; height:180">${model.content}</textarea>
								</div>
								<br/>
								<br/>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<c:if test="${not empty model.id}">
										<input type="button" class="btn btn-white btn-warning btn-bold" id="btnAddOrUpdateNews" name="btnAddOrUpdateNews" value="Update Post"/>
									</c:if>
									<c:if test="${empty model.id}">
										<input type="button" class="btn btn-white btn-warning btn-bold" id="btnAddOrUpdateNews" name="btnAddOrUpdateNews" value="Add New Post"/>
									</c:if>
								</div>
								<br/>
								<br/>
							</div>
							<input type="hidden" value="${model.id}" id="id" name="id">
						</form>
					</div>	
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var editor = "";
		$(document).ready(function(){
		  	editor = CKEDITOR.replace('content'); 
		});
	
	
		$('#btnAddOrUpdateNews').click(function (e) {
			e.preventDefault();
			/* var title = $('#title').val();
			var categoryCode = $('#categoryCode').val();
			var thumbnail = $('#thumbnail').val();
			var shortDescription = $('#shortDescription').val();
			var content = $('#content').val(); */
			var formData = $('#submitForm').serializeArray();
			var data = {};
			$.each(formData, function (index, val) {
				data[""+val.name+""] = val.value;
			});
			data["content"] = editor.getData();
			var id = $('#id').val();
			if (id=="") {
				addNews(data);
			} else {
				updateNews(data);
			}
			
			function addNews(data) {
				$.ajax({
					url: '${APIurl}',
					type: 'POST',
					contentType: 'application/json',
					data: JSON.stringify(data),
					dataType: 'json',
					success: function (result){
						window.location.href = "${NewsURL}?type=edit&id="+ result.id+"&message=insert_successfully";
					},
					error: function (err){
						window.location.href = "${NewsURL}?page=1&maxPageItem=2&sortName=title&sortBy=DESC&type=list&message=insert_failed";
					},
				});
			}
			function updateNews(data) {
				$.ajax({
					url: '${APIurl}',
					type: 'PUT',
					contentType: 'application/json',
					data: JSON.stringify(data),
					dataType: 'json',
					success: function (result){
						window.location.href = "${NewsURL}?id="+result.id+"&type=edit&message=update_successfully";
					},
					error: function (err){
						window.location.href = "${NewsURL}?page=1&maxPageItem=2&type=edit&message=update_failed";
					},
				});
			}
			
		});
	</script>
</body>
</html>