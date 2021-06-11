<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>

<body>
	<div class="container">

		<div class="login-form">
			<div class="main-div">
				<c:if test="${not empty message}">
					<div class="alert alert-${alert}">
						<strong>${message}</strong>
					</div>
				</c:if>
				<!-- <div class="panel">
					<h2>Admin Login</h2>
					<p>Please enter your email and password</p>
				</div> -->
				<form action="<c:url value= '/login'/>" id="formLogin" method="POST">

					<div class="form-group">


						<input type="text" class="form-control" id="userName"
							placeholder="UserName" name="userName">

					</div>

					<div class="form-group">

						<input type="password" class="form-control" id="password"
							placeholder="Password" name="password">

					</div>
					<div class="form-group">

						<input type="hidden" class="form-control" id="status"
							name="status" value=1>

					</div>
					<!-- <div class="forgot">
						<a href="reset.html">Forgot password?</a>
					</div> -->
					<input type="hidden" value="login" id="action" name="action" />

					<button type="submit" class="btn btn-primary">Login</button>

				</form>
			</div>
			<!-- <p class="botto-text">Designed by Sunil Rajput</p> -->
		</div>
	</div>
</body>
