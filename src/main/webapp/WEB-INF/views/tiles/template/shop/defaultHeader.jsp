<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Free Leoshop Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/resources/css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/resources/js/jquery1.min.js"></script>
<script src="https://kit.fontawesome.com/e6cc62640e.js" crossorigin="anonymous"></script>

<!--start slider -->
    <link rel="stylesheet" href="/resources/css/fwslider.css" media="all">
    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/css3-mediaqueries.js"></script>
    <script src="/resources/js/fwslider.js"></script>
<!--end slider -->
<!-- start menu -->
<link href="/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/resources/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<link rel="shortcut icon" href="/uploads/favicon.ico" type="image/x-icon">
<script src="/resources/js/jquery.easydropdown.js"></script>
</head>
<%--
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">

	<div class="container">
		<a class="navbar-brand" href="/shop/" style="color: white">Cửa
			hàng công nghệ</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
			
				<li class="nav-item active"><a class="nav-link" href="/login"
					style="color: white"><i class="fa fa-sign-in"></i> Login<span class="sr-only"></span></a>
				</li>
				
				<li class="nav-item active"><a class="nav-link" href="/shop/"
					style="color: white"><i class="fa fa-home"></i> Trang chủ <span class="sr-only">(current)</span>
				</a></li>
<%--				<li class="nav-item"><a class="nav-link" href="/shop/about"--%>
<%--					style="color: white">Thông tin</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/shop/shoppingCart" style="color: white"><i
						class="fas fa-shopping-cart"></i> Giỏ hàng</a></li>
			</ul>
		</div>
	</div>
</nav>--%>
<div class="header-top">
	   <div class="wrap"> 
			  <div class="header-top-left">
			  	   <div class="box">
   				      <select tabindex="4" class="dropdown">
							<option value="" class="label" value="">Ngôn ngữ :</option>
							<option value="1">English</option>
							<option value="2">VietNam</option>
					  </select>
   				    </div>
   				    <div class="box1">
   				        <select tabindex="4" class="dropdown">
							<option value="" class="label" value="">Đơn vị :</option>
							<option value="1">$ Dollar</option>
							<option value="2">VND Đồng</option>
						</select>
   				    </div>
   				    <div class="clear"></div>
   			 </div>
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="/register">Tài khoản</a></li> |
					<li><a href="checkout.html">Yêu thích</a></li> |
					<li><a href="checkout.html">Checkout</a></li> |
					<li><a href="/login">Đăng nhập</a></li> |
					<li><a href="#">Đăng xuất</a></li> | 
				</ul>
			</div>
			<div class="clear"></div>
 		</div>
	</div>

	<div class="header-bottom">
	    <div class="wrap">
			<div class="header-bottom-left">
				<div class="logo">
					<a href="/shop/"><img src="/uploads/logo.png" width="250px" height="50px" alt=""/></a>
				</div>
				<div class="menu">
	            <ul class="megamenu skyblue">
			<li class="active grid"><a href="/shop/">Trang chủ</a></li>
			<li><a class="color4" href="#">Điện Thoại</a></li>
	 		<!-- <li><a class="dropdownHang" href="#">Hãng</a></li> -->
	 		<div class="dropdownHang">
  			<span>HÃNG</span>
  <div class="dropdown-content">
  <c:forEach items="${manufacturers}" var="manufacturer">
  <a	href="<c:url value='/shop/getProductsByManufacturer?filter=${manufacturer.id}' />">
  <span>${manufacturer.manufacturerName}</span>
  </a>
  </c:forEach>
  </div>
</div>
	 		
				<li><a class="color6" href="/shop/about">Thông Tin</a></li>
				<li><a class="color7" href="other.html">Khác</a></li>
			</ul>
			</div>
		</div>
	   <div class="header-bottom-right">
         <div class="search">	  
				<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				<input type="submit" value="Subscribe" id="submit" name="submit">
				<div id="response"> </div>
		 </div>
	  <div class="tag-list">
	    <ul class="icon1 sub-icon1 profile_img">
			<li><a class="active-icon c1" href="#"> </a>
				<ul class="sub-icon1 list">
					<li><h3>sed diam nonummy</h3><a href=""></a></li>
					<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
				</ul>
			</li>
		</ul>
		<ul class="icon1 sub-icon1 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				<ul class="sub-icon1 list">
					<li><h3>No Products</h3><a href=""></a></li>
					<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
				</ul>
			</li>
		</ul>
	    <ul class="last"><li><a href="/shop/shoppingCart">Cart(0)</a></li></ul>
	  </div>
    </div>
     <div class="clear"></div>
     </div>
	</div>
