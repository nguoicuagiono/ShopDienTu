<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib tagdir="/WEB-INF/tags/util" prefix="util"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Tất cả khách hàng</title>
<style type="text/css">
p{
	word-spacing:10px;
	text-align:center;	
}
.title{
	margin-bottom: 30px;
	marfin-top:-30px;
}
.container{
	margin-bottom: 30px;
	display: inline-block;
}
.table-responsive{
	marfin-top: 30px;
}
</style>
</head>


<body>
<div class="title">
<p>Danh sách khách hàng</p>
</div>
	<div class="container">	
		<c:set var="searchUrl"
			value="${pageContext.request.contextPath}/admin/customer/searchCustomer" />
		<form:form method="POST" action="${searchUrl}">
			<center><div class="row">
				<div class="col-sm">
					<input class="form-control" type="search" name="Search" id="myInput"
						placeholder="Nhập tên hoặc số điện thoại" aria-label="Search">
				</div>
				<div class="col-sm">
					<button  type="submit" class="btn btn-outline-success my-2 my-sm-0"><i class="fa fa-search" width="auto"></i> Tìm kiếm</button>
				</div>
			</div></center>
		</form:form>
	</div>
	<div class="table-responsive">
		<table class="table table-sm table-hover">
		<thead class="thead-light">
		<tr class="table-warning">
			<th style="text-align: center">Xem</th>
			<th style="text-align: center">Mã KH</th>
			<th>Tên</th>
			<th>SĐT</th>
			<th>Địa chỉ</th>
			<th>Email</th>
			<sec:authorize access="hasAnyRole('SUPPER_ADMIN','MANAGER','EMPLOYEE')">	
			<th style="text-align: center">Sửa</th>
			<th style="text-align: center">Xóa</th>
			</sec:authorize>
		</tr>
		</thead>
		<tbody id="myTable">
		<c:forEach items="${customers.getContent()}" var="customer">
			<tr>
			<td style="text-align: center"><a href="<c:url value='/admin/customer/getCustomer/${customer.id}?mode=VIEW' />"><i class="fa fa-eye"></i></a></td>
			<td style="text-align: center">${customer.id }</td>
			<td> ${customer.firstName} ${customer.lastName}</td>
			<td>${customer.numberPhone}</td>	
			<td>${customer.street}, ${customer.district}, ${customer.city}</td>
			<td>${customer.email}</td>
			<sec:authorize access="hasAnyRole('SUPPER_ADMIN','MANAGER','EMPLOYEE')">	
			<td style="text-align: center"><a href="<c:url value='/admin/customer/getCustomer/${customer.id}?mode=EDIT' />"><i class="fa fa-edit"></i></a></td>
			<td style="text-align: center"><a href="<c:url value='/admin/customer/deleteCustomer/${customer.id}' />"><i class="fa fa-trash-alt"></i></a></td>
		</sec:authorize>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<sec:authorize access="hasAnyRole('SUPPER_ADMIN', 'MANAGER','EMPLOYEE')">
	<div class="p-1">
	<a href="<c:url value='/admin/customer/addCustomer' />"><i class="fas fa-plus-square"> Thêm</i></a>
	</div>
	</sec:authorize>
	<br>
	
	<c:if test="${customers.totalPages > 0}">
		<util:pagination currentPage="${currentPage}" filter="${filter}" showPageTitle="Số khách hàng / trang" thispage="${customers}"></util:pagination>
	</c:if>
	
	<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

</body>
</html>