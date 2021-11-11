<%@include file="/common/taglib.jsp"%>

<div id="sidebar"
	class="sidebar                  responsive                    ace-save-state">
	<script type="text/javascript">
		try {
			ace.settings.loadState('sidebar')
		} catch (e) {
		}
	</script>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="ace-icon fa fa-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="ace-icon fa fa-pencil"></i>
			</button>

			<button class="btn btn-warning">
				<i class="ace-icon fa fa-users"></i>
			</button>

			<button class="btn btn-danger">
				<i class="ace-icon fa fa-cogs"></i>
			</button>
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span> <span class="btn btn-info"></span>

			<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
		</div>
	</div>
	<!-- /.sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li class="active">
			<c:url var="listURL" value="/admin-news">
				<c:param name="page" value= "1" />
				<c:param name="maxPageItem" value="2" />
				<c:param name="sortName" value="title" />
				<c:param name="sortBy" value="DESC" />
				<c:param name="type" value="list" />
			</c:url> <a
			href='${listURL}'>
				<i class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
					Dashboard </span>
		</a> <b class="arrow"></b></li>

		<li class=""><a
			href="${pageContext.request.contextPath}/template/admin/#"
			class="dropdown-toggle"> <i class="menu-icon fa fa-desktop"></i>
				<span class="menu-text"> UI &amp; Elements </span> <b
				class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a href='<c:url value = "/admin-news"/>'
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>

						Layouts <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/top-menu.html">
								<i class="menu-icon fa fa-caret-right"></i> Top Menu
						</a> <b class="arrow"></b></li>

						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/two-menu-1.html">
								<i class="menu-icon fa fa-caret-right"></i> Two Menus 1
						</a> <b class="arrow"></b></li>

						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/two-menu-2.html">
								<i class="menu-icon fa fa-caret-right"></i> Two Menus 2
						</a> <b class="arrow"></b></li>

						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/mobile-menu-1.html">
								<i class="menu-icon fa fa-caret-right"></i> Default Mobile Menu
						</a> <b class="arrow"></b></li>

						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/mobile-menu-2.html">
								<i class="menu-icon fa fa-caret-right"></i> Mobile Menu 2
						</a> <b class="arrow"></b></li>

						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/mobile-menu-3.html">
								<i class="menu-icon fa fa-caret-right"></i> Mobile Menu 3
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/typography.html">
						<i class="menu-icon fa fa-caret-right"></i> Typography
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/elements.html">
						<i class="menu-icon fa fa-caret-right"></i> Elements
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/buttons.html">
						<i class="menu-icon fa fa-caret-right"></i> Buttons &amp; Icons
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/content-slider.html">
						<i class="menu-icon fa fa-caret-right"></i> Content Sliders
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/treeview.html">
						<i class="menu-icon fa fa-caret-right"></i> Treeview
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/jquery-ui.html">
						<i class="menu-icon fa fa-caret-right"></i> jQuery UI
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/nestable-list.html">
						<i class="menu-icon fa fa-caret-right"></i> Nestable Lists
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/#"
					class="dropdown-toggle"> <i class="menu-icon fa fa-caret-right"></i>

						Three Level Menu <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/#"> <i
								class="menu-icon fa fa-leaf green"></i> Item #1
						</a> <b class="arrow"></b></li>

						<li class=""><a
							href="${pageContext.request.contextPath}/template/admin/#"
							class="dropdown-toggle"> <i
								class="menu-icon fa fa-pencil orange"></i> 4th level <b
								class="arrow fa fa-angle-down"></b>
						</a> <b class="arrow"></b>

							<ul class="submenu">
								<li class=""><a
									href="${pageContext.request.contextPath}/template/admin/#">
										<i class="menu-icon fa fa-plus purple"></i> Add Product
								</a> <b class="arrow"></b></li>

								<li class=""><a
									href="${pageContext.request.contextPath}/template/admin/#">
										<i class="menu-icon fa fa-eye pink"></i> View Products
								</a> <b class="arrow"></b></li>
							</ul></li>
					</ul></li>
			</ul></li>

		<li class=""><a href='<c:url value = "/admin-news"/>'
			class="dropdown-toggle"> <i class="menu-icon fa fa-list"></i> <span
				class="menu-text"> Tables </span> <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/tables.html">
						<i class="menu-icon fa fa-caret-right"></i> Simple &amp; Dynamic
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/jqgrid.html">
						<i class="menu-icon fa fa-caret-right"></i> jqGrid plugin
				</a> <b class="arrow"></b></li>
			</ul></li>

		<li class=""><a
			href="${pageContext.request.contextPath}/template/admin/#"
			class="dropdown-toggle"> <i
				class="menu-icon fa fa-pencil-square-o"></i> <span class="menu-text">
					Forms </span> <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/form-elements.html">
						<i class="menu-icon fa fa-caret-right"></i> Form Elements
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/form-elements-2.html">
						<i class="menu-icon fa fa-caret-right"></i> Form Elements 2
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/form-wizard.html">
						<i class="menu-icon fa fa-caret-right"></i> Wizard &amp;
						Validation
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/wysiwyg.html">
						<i class="menu-icon fa fa-caret-right"></i> Wysiwyg &amp; Markdown
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/dropzone.html">
						<i class="menu-icon fa fa-caret-right"></i> Dropzone File Upload
				</a> <b class="arrow"></b></li>
			</ul></li>

		<li class=""><a
			href="${pageContext.request.contextPath}/template/admin/widgets.html">
				<i class="menu-icon fa fa-list-alt"></i> <span class="menu-text">
					Widgets </span>
		</a> <b class="arrow"></b></li>

		<li class=""><a
			href="${pageContext.request.contextPath}/template/admin/calendar.html">
				<i class="menu-icon fa fa-calendar"></i> <span class="menu-text">
					Calendar <span class="badge badge-transparent tooltip-error"
					title="2 Important Events"> <i
						class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
				</span>
			</span>
		</a> <b class="arrow"></b></li>

		<li class=""><a
			href="${pageContext.request.contextPath}/template/admin/gallery.html">
				<i class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
					Gallery </span>
		</a> <b class="arrow"></b></li>

		<li class=""><a
			href="${pageContext.request.contextPath}/template/admin/#"
			class="dropdown-toggle"> <i class="menu-icon fa fa-tag"></i> <span
				class="menu-text"> More Pages </span> <b
				class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/profile.html">
						<i class="menu-icon fa fa-caret-right"></i> User Profile
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/inbox.html">
						<i class="menu-icon fa fa-caret-right"></i> Inbox
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/pricing.html">
						<i class="menu-icon fa fa-caret-right"></i> Pricing Tables
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/invoice.html">
						<i class="menu-icon fa fa-caret-right"></i> Invoice
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/timeline.html">
						<i class="menu-icon fa fa-caret-right"></i> Timeline
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/search.html">
						<i class="menu-icon fa fa-caret-right"></i> Search Results
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/email.html">
						<i class="menu-icon fa fa-caret-right"></i> Email Templates
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/login.html">
						<i class="menu-icon fa fa-caret-right"></i> Login &amp; Register
				</a> <b class="arrow"></b></li>
			</ul></li>

		<li class=""><a
			href="${pageContext.request.contextPath}/template/admin/#"
			class="dropdown-toggle"> <i class="menu-icon fa fa-file-o"></i> <span
				class="menu-text"> Other Pages <span
					class="badge badge-primary">5</span>
			</span> <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>

			<ul class="submenu">
				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/faq.html">
						<i class="menu-icon fa fa-caret-right"></i> FAQ
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/error-404.html">
						<i class="menu-icon fa fa-caret-right"></i> Error 404
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/error-500.html">
						<i class="menu-icon fa fa-caret-right"></i> Error 500
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/grid.html">
						<i class="menu-icon fa fa-caret-right"></i> Grid
				</a> <b class="arrow"></b></li>

				<li class=""><a
					href="${pageContext.request.contextPath}/template/admin/blank.html">
						<i class="menu-icon fa fa-caret-right"></i> Blank Page
				</a> <b class="arrow"></b></li>
			</ul></li>
	</ul>
	<!-- /.nav-list -->

	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i id="sidebar-toggle-icon"
			class="ace-icon fa fa-angle-double-left ace-save-state"
			data-icon1="ace-icon fa fa-angle-double-left"
			data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>
</div>
