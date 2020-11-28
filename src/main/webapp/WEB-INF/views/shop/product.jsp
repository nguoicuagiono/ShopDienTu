<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript"
	src="/resources/js/jquery.jscrollpane.min.js"></script>
<script type="text/javascript" id="sourcecode">
	$(function() {
		$('.scroll-pane').jScrollPane();
	});
</script>
<title>Chi tiết sản phẩm</title>
<script src="/resources/js/jquery.etalage.min.js"></script>
<script>
	jQuery(document)
			.ready(
					function($) {

						$('#etalage')
								.etalage(
										{
											thumb_image_width : 360,
											thumb_image_height : 360,
											source_image_width : 900,
											source_image_height : 900,
											show_hint : true,
											click_callback : function(
													image_anchor, instance_id) {
												alert('Callback example:\nYou clicked on an image with the anchor: "'
														+ image_anchor
														+ '"\n(in Etalage instance: "'
														+ instance_id + '")');
											}
										});

					});
</script>

</head>
<body>

	
	<%-- 
	<div class="col-lg-9">
		<div class="card mt-4">
			<img src="<c:url value='/uploads/${product.productImages}'/>"
				width="250" height="200" alt="">
			<div class="card-body">
				<div class="title">
					<h3 class="card-title">${product.productName}</h3>
					<h3 class="card-title" style="font-size: 18px">${product.manufacturer.manufacturerName}</h3>
					<h3 class="card-title" style="font-size: 18px">Năm sản xuất:
						${product.yearManufactured}</h3>
				</div>
				<fmt:setLocale value="vi_VN" scope="session" />
				<h5 style="color: #f20;" align="center">
					<fmt:formatNumber type="currency" value="${product.newPrice}"></fmt:formatNumber>
				</h5>
				<c:if test="${product.discount !=0 }">
					<h5 style="color: #f20; font-size: 14px;">
						<fmt:formatNumber value="${- product.discount}" />
						%
					</h5>
				</c:if>
				<h5
					style="text-decoration: line-through; color: #bebcb5; font-size: 12px;">
					<fmt:formatNumber type="currency" value="${product.oldPrice}" />
				</h5>
				<p class="card-text">${product.description}</p>

				<div class="shopping_cart">
					<div class="cart_title">
						<c:choose>
							<c:when test="${product.productNumber <=0}">
								<h3 style="color: #f20;">Đã hết hàng</h3>
							</c:when>
							<c:otherwise>
								<a
									href="<c:url value='/shop/buyProduct?id=${product.productCode }' />"
									class="btn btn-primary">Thêm vào giỏ hàng</a>
								<br />
								<span class="text-warning">&#9733; &#9733; &#9733;
									&#9733; &#9734;</span>
							</c:otherwise>
						</c:choose>
					</div>

				</div>

			</div>
		</div>
	</div> --%>
	<!-- /.card -->
 <ul class="breadcrumb breadcrumb__t"><a class="home" href="/shop/">Trang chủ</a> /  ${product.productName} </ul>
	<div class="">
		<div class="grid images_3_of_2">
			<ul id="etalage">
				<li><a href="optionallink.html"> <img
						class="etalage_thumb_image"
						src="<c:url value='/uploads/${product.productImages}'/>"
						class="img-responsive" width="350" height="500" alt="" /> <img
						class="etalage_source_image" src="<c:url value='/uploads/${product.productImages}'/>
						class="img-responsive" title="" />
				</a></li>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="desc1 span_3_of_2">
			<h3 class="m_3">${product.productName} &nbsp;&nbsp;
			<c:if test="${product.discount !=0 }">
			<span class="badge badge-pill badge-warning">
			<h5 style=" font-size: 14px;">
						<fmt:formatNumber value="${- product.discount}" />
						%
					</h5>
			</span></h3>
			</c:if>
			<fmt:setLocale value="vi_VN" scope="session" />
			<p class="m_5">
				<fmt:formatNumber type="currency" value="${product.newPrice}"></fmt:formatNumber>
				<h4 style="text-decoration: line-through; color: #bebcb5; font-size: 12px;">
				<span class="reducedfrom" ><fmt:formatNumber type="currency"
						value="${product.oldPrice}" /></span></h4>
						 <a href="#">click for offer</a>
			</p>
			<div class="btn_form">
				<form>
				<c:choose>
					<c:when test="${product.productNumber <=0}">
						<h3 style="color: #f20;">Đã hết hàng</h3>
					</c:when>
					<c:otherwise>
					 
						 
						<%-- <input formaction="<c:url value='/shop/buyProduct?id=${product.productCode }' />" type="submit" value="buy" title=""> --%>
					
					<a
									href="<c:url value='/shop/buyProduct?id=${product.productCode }' />"
									class="btn btn-primary">Thêm vào giỏ hàng</a>
						</c:otherwise>
						</c:choose>
				</form>
			</div>
			<span class="m_link"><a href="/login">login to save in wishlist</a>
			</span>
			<p class="m_text2">Lorem ipsum dolor sit amet, consectetuer
				adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet
				dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
				quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut
				aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
				hendrerit in vulputate velit esse molestie consequat, vel illum
				dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto
				odio dignissim qui blandit</p>
		</div>
		<div class="clear"></div>
		<div class="clients">
			<h3 class="m_3">10 Other Products in the same category</h3>
			<ul id="flexiselDemo3">
				<li><img src="/uploads/s5.jpg" /><a href="#">Category</a>
				<p>Rs 600</p></li>
				<li><img src="/uploads/s6.jpg" /><a href="#">Category</a>
				<p>Rs 850</p></li>
				<li><img src="/uploads/s7.jpg" /><a href="#">Category</a>
				<p>Rs 900</p></li>
				<li><img src="/uploads/s8.jpg" /><a href="#">Category</a>
				<p>Rs 550</p></li>
				<li><img src="/uploads/s9.jpg" /><a href="#">Category</a>
				<p>Rs 750</p></li>
			</ul>
			<script type="text/javascript">
				$(window).load(function() {
					$("#flexiselDemo1").flexisel();
					$("#flexiselDemo2").flexisel({
						enableResponsiveBreakpoints : true,
						responsiveBreakpoints : {
							portrait : {
								changePoint : 480,
								visibleItems : 1
							},
							landscape : {
								changePoint : 640,
								visibleItems : 2
							},
							tablet : {
								changePoint : 768,
								visibleItems : 3
							}
						}
					});

					$("#flexiselDemo3").flexisel({
						visibleItems : 5,
						animationSpeed : 1000,
						autoPlay : false,
						autoPlaySpeed : 3000,
						pauseOnHover : true,
						enableResponsiveBreakpoints : true,
						responsiveBreakpoints : {
							portrait : {
								changePoint : 480,
								visibleItems : 1
							},
							landscape : {
								changePoint : 640,
								visibleItems : 2
							},
							tablet : {
								changePoint : 768,
								visibleItems : 3
							}
						}
					});

				});
			</script>
			<script type="text/javascript" src="/resources/js/jquery.flexisel.js"></script>
		</div>
		<div class="toogle">
			<h3 class="m_3">Product Details</h3>
			<p class="m_text">Lorem ipsum dolor sit amet, consectetuer
				adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet
				dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
				quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut
				aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in
				hendrerit in vulputate velit esse molestie consequat, vel illum
				dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto
				odio dignissim qui blandit praesent luptatum zzril delenit augue
				duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta
				nobis eleifend option congue nihil imperdiet doming id quod mazim
				placerat facer possim assum.</p>
		</div>
		<div class="toogle">
			<h3 class="m_3">Thông tin về Iphone</h3>
			<p class="m_text">Thay đổi thiết kế mới sau 6 năm <br>
Theo chu kỳ cứ mỗi 3 năm thì iPhone lại thay đổi thiết kế và 2020 là năm đánh dấu cột mốc quan trong này, vì thế rất có thể đây là thời điểm các mẫu iPhone 12 sẽ có một sự thay đổi mạnh mẽ về thiết kế.

iPhone 12 Pro Max sở hữu diện mạo mới mới với khung viền được vát thẳng và mạnh mẽ như trên iPad Pro 2020, chấm dứt hơn 6 năm với kiểu thiết kế bo cong trên iPhone 6 được ra mắt lần đầu tiên vào năm 2014.</p>
		</div>
	</div>
	 

		
</body>
</html>