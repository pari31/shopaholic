<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">



<!-- <script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>
 -->
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!--Bootstrap Readable theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!--Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">


<!-- FontAwesome 5 -->
<link href="${css}/fontawesomeall.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

<title>Shopaholic-${title}</title>
</head>

<body>
	<div class="wrapper">

		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">

				<!-- Brand and toggle get grouped for better mobile display -->

				<div class="navbar-header">
					<!-- <a class="navbar-brand" href=${contextRoot}/home">Home</a> -->

				</div>

			</div>

		</nav>



		<!-- Navigation -->

		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
		<div class="container">
		<div class="row">
		<div class="col-xs-12">
		<div class="jumbotron">
		
		<h1>
		${errorTitle}
		</h1>
		<hr/>
		
		<blockquote>
		${errorDescription}
		</blockquote>
		
		</div>
		</div>
		</div>
		</div>
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

		</div>
		<!-- Footer -->

		<%@include file="./shared/footer.jsp"%>
	</div>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.js"></script>

	<!-- DataTable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>

	<!-- DataTable Bootstarp script -->
	<script src="${js}/dataTables.bootstrap4.js"></script>

	<!-- FontAwesome 5 script -->
	<script src="${js}/fontawesomeall.js"></script>

	<!-- Self coded javascript to link myapp.js -->
	<script src="${js}/myapp.js"></script>
	<script src="${js}/bootstrap.min.js"></script>

</body>

</html>
