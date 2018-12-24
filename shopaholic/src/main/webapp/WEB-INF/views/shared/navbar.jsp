
<script>
	window.userRole = '${userModel.role}';
</script>
<%-- <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${contextRoot}/home">Shopaholic</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li id="about"><a href="${contextRoot}/about">About</a></li>

				<li id="contact"><a href="${contextRoot}/contact">Contact</a></li>

				<li id="listProducts"><a
					href="${contextRoot}/show/all/products">View Products</a></li>
				<li id="manageProduct"><a href="${contextRoot}/manage/products">Manage
						Product</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li id="signup"><a href="${contextRoot}/membership">Sign Up</a>
				</li>
				<li id="login"><a href="${contextRoot}/login">Login</a></li>
				<li class="dropdown" id="userModel"><a
					class="btn btn-default dropdown-toggle" href="javascript:void(0)"
					id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="true"> ${userModel.fullName} <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						<li id="cart"><a href="${contextRoot}/cart/show"> <span
								class="glyphicon glyphicon-shopping-cart"></span>&#160;<span
								class="badge">${userModel.cart.cartLines}</span> - &#8377;
								${userModel.cart.grandTotal}
						</a></li>
						<li role="separator" class="divider"></li>
						<li id="logout"><a href="${contextRoot}/logout">Logout</a></li>
					</ul></li>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav> --%>


<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${contextRoot}/home">Shopaholic</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="${contextRoot}/home">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item" id="about"><a class="nav-link"
					href="${contextRoot}/about">About</a></li>
				<li class="nav-item" id="contact"><a class="nav-link"
					href="${contextRoot}/contact">Contact</a></li>
				<li class="nav-item" id="listProducts"><a class="nav-link"
					href="${contextRoot}/show/all/products">View Products</a></li>
				<li class="nav-item" id="manageProduct"><a class="nav-link"
					href="${contextRoot}/manage/products">Manage Product</a></li>
				<li class="nav-item" id="signup"><a class="nav-link"
					href="${contextRoot}/membership">Sign Up</a></li>
				<li class="nav-item" id="login"><a class="nav-link"
					href="${contextRoot}/login">Login</a></li>
					
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">  ${userModel.fullName} <span class="caret"></span></a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="${contextRoot}/cart/show"><i class="fas fa-shopping-cart"></i>
						&#160;<span
								class="badge">${userModel.cart.cartLines}</span> - &#8377;
								${userModel.cart.grandTotal}
						
						</a> 
						
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="${contextRoot}/logout">Logout</a>
					</div>
					
					</li>
					
					
			</ul>
		</div>
	</div>
</nav>