<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<head>
<title>Free Leoshop Website Template | Home :: w3layouts</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="/resources/css/form.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="/resources/js/fontawesome.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/js/jquery1.min.js"></script>
<!-- start menu -->
<link href="/resources/css/megamenu.css" rel="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript" src="/resources/js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<!--start slider -->
<link rel="stylesheet" href="/resources/css/fwslider.css" media="all">
<script src="/resources/js/jquery-ui.min.js"></script>
<script src="/resources//resources/js/css3-mediaqueries.js"></script>
<script src="/resources/js/fwslider.js"></script>
<!--end slider -->
<script src="/resources/js/jquery.easydropdown.js"></script>
</head>
<%-- <nav
	class="navbar navbar-dark fixed-top bg-gradient-dark flex-md-nowrap p-0">
	<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Quản lý cửa
		hàng công nghệ</a>
	<div class="px-5 dropdown show">
		<a class="btn white-text dropdown-toggle" role="button"
			id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"
			href="${pageContext.request.contextPath}/profile"><i
			class="far fa-user"></i> <sec:authentication
				property="principal.username" /> </a>

		<div class="dropdown-menu" aria-labelledby="dropdownMenuLink"
			style="right: 0;"">
			<a class="dropdown-item"
				href="${pageContext.request.contextPath}/logout"><i
				class="fas fa-sign-out-alt"></i>Đăng xuất</a> <a class="dropdown-item"
				href="${pageContext.request.contextPath}/profile/myProfile"><i
				class="fas fa-address-card"></i>Hồ sơ của tôi</a> <a
				class="dropdown-item"
				href="${pageContext.request.contextPath}/profile/viewchangepassword?username=<sec:authentication property="principal.username" />"><i
				class="fas fa-key"></i>Đổi mật khẩu</a>
		</div>
	</div>
</nav> --%>
<div class="header-top">
	<div class="wrap">
		<div class="header-top-left">
			<div class="box">
				<select tabindex="4" class="dropdown">
					<option value="" class="label" value="">Language :</option>
					<option value="1">English</option>
					<option value="2">French</option>
					<option value="3">German</option>
				</select>
			</div>
			<div class="box1">
				<select tabindex="4" class="dropdown">
					<option value="" class="label" value="">Currency :</option>
					<option value="1">$ Dollar</option>
					<option value="2">€ Euro</option>
				</select>
			</div>
			<div class="clear"></div>
		</div>
		<div class="cssmenu">
			<ul>
				<li class="active"><a href="login.html">Tài khoản</a></li> |
				<li><a href="checkout.html">Yêu thích</a></li> |
				<li><a href="checkout.html">Checkout</a></li> |
					<li><a href="/login">Đăng nhập</a></li> |
				<li><a href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="header-bottom">
	<div class="wrap">
		
			<div class="logo">
				<a href="/shop/"><img src="/uploads/logo.png" width="250px" height="50px" alt="" /></a>
			</div>
			<div class="menu">
				<ul class="megamenu skyblue">
					<li class="active grid"><a href="#">Trang chủ</a></li>
					<li><a class="color6" href="${pageContext.request.contextPath}/admin/user/">QL người dùng</a></li>
					<li><a class="color6" href="${pageContext.request.contextPath}/admin/order/">QL Hóa đơn</a></li>
					<li><a class="color6" href="${pageContext.request.contextPath}/admin/report/">Thống kê</a></li>
					<li><a class="color6" href="${pageContext.request.contextPath}/admin/product/">QL Sản phẩm</a></li>
					<li><a class="color6" href="${pageContext.request.contextPath}/admin/manufacturer/">QL Nhà sản xuất</a></li>
					<li><a class="color6" href="${pageContext.request.contextPath}/admin/customer/">QL Khách hàng</a></li>
				</ul>
			</div>
		

		<div class="clear"></div>
	</div>
</div>
