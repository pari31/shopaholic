
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />



<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shopaholic-${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!--Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">


<!-- FontAwesome 5 -->
<link href="${css}/fontawesomeall.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->

		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">

			<!-- Loading the home content -->
			<c:if test="${userClickHome==true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Loading only when user click About-->
			<c:if test="${userClickAbout==true}">
				<%@include file="about.jsp"%>
			</c:if>


			<!-- Loading only when user click Contact-->
			<c:if test="${userClickContact==true}">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Loading only when user click All Products-->
			<c:if
				test="${userClickAllProducts==true or userClickCategoryProducts==true}">
				<%@include file="listProducts.jsp"%>
			</c:if>

			<!-- Loading only when user click Show Product-->
			<c:if test="${userClickShowProduct==true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>

			<!-- Loading only when user click Manage Products-->
			<c:if test="${userClickManageProducts==true}">
				<%@include file="managedProducts.jsp"%>
			</c:if>

			<!-- Loading only when user clicks Manage Products -->
			<c:if test="${userClickShowCart == true}">
				<%@include file="cart.jsp"%>
			</c:if>

		</div>
		<!-- Footer -->

		<%@include file="./shared/footer.jsp"%>
	

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.js"></script>
	<script src="${js}/popper.min.js"></script>
	<!-- DataTable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>

	<!-- DataTable Bootstarp script -->
	<script src="${js}/dataTables.bootstrap4.js"></script>

	<!-- Bootbox -->
	<script src="${js}/bootbox.min.js"></script>

	<!-- FontAwesome 5 script -->
	<script src="${js}/fontawesomeall.js"></script>

	<!-- DataTable Bootstrap Script -->
	<script src="${js}/bootstrap.min.js"></script>
	<script src="${js}/jquery.validate.js"></script>

	<!-- Self coded javascript to link myapp.js -->
	<script src="${js}/myapp.js"></script>


</body>
</div>
</html>
