<!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>

<!-- DataTable Bootstrap Script -->
<script src="${js}/productsController.js"></script>
 <div class="container" ng-app="ShoppingApp"
	ng-controller="ProductController as pCtrl">

      <div class="row" ng-init="pCtrl.fetchProducts()">

        <div class="col-lg-3">

          <%@include file="./shared/sidebar.jsp" %>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="${images}/banner/Laptop1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="${images}/banner/Mobile1.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="${images}/banner/TV.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

				<div class="row">
                	<div class="col-xs-12">
                		<h3>Our Most Viewed Products</h3>
                		<hr/>
                	</div>
                </div>
          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4" ng-repeat="product in pCtrl.mvProducts">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" ng-src="${images}/{{product.code}}.jpg" alt="{{product.name}}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">{{product.name}}</a>
                  </h4>
                  <h5>&#8377; {{product.unitPrice}}</h5>
                  <p class="card-text">{{product.description}}</p>
                  <a ng-href="${contextRoot}/show/{{product.id}}/product" class="btn btn-primary pull-right">View</a>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->


				<div class="row">
                	<div class="col-xs-12">
                		<h3>Our Most Purchased Products</h3>
                		<hr/>
                	</div>
                </div>
          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4" ng-repeat="product in pCtrl.mpProducts">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" ng-src="${images}/{{product.code}}.jpg" alt="{{product.name}}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">{{product.name}}</a>
                  </h4>
                  <h5>&#8377; {{product.unitPrice}}</h5>
                  <p class="card-text">{{product.description}}</p>
                  <a ng-href="${contextRoot}/show/{{product.id}}/product" class="btn btn-primary pull-right">View</a>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
