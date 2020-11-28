<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>char</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<body>
	<div class="span-2c">
		<h3 class="tlt">Line Chart</h3>
		<canvas id="viewchart1" height="300" width="400"
			style="width: 400px; height: 300px;"></canvas>
			<h3>Total: ${total}</h3>
		<script>
             var lineChartData = {
                  labels: [<c:forEach var="item" items="${listReceipt}">'${item.time}',</c:forEach>],
                  datasets: [
                       {
                             fillColor: "#FC8213",
                             data: [<c:forEach var="item" items="${listReceipt}">${item.value},</c:forEach>]
                       }
                  ]

             };
             new Chart(document.getElementById("viewchart1").getContext("2d")).Line(lineChartData);
       </script>
	</div>
</body>
</html>