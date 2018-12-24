<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">
	<div class="row">

		<c:if test="${not empty message}">
			<div class="col-xs-12">

				<div class="alert alert-success alert dismissible">

					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>
			</div>

		</c:if>

		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-primary">

				<div class="panel-heading">


					<h4>Product Management</h4>


				</div>

				<div class="panel-body">

					<!-- FORM ELEMENTS -->

					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group">

							<label class="control-label col-md-4" for="name">Enter
								Product Name:</label>

							<div class="col-md-4">

								<sf:input type="text" path="name" id="name"
									placeholder="Product Name" class="form-control" />

								<sf:errors path="name" cssClass="help-block" element="em" />

								<!-- <em class="help-block">Please enter product name!</em> -->
							</div>

						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="brand">Enter
								Brand Name:</label>

							<div class="col-md-4">

								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
								<sf:errors path="brand" cssClass="help-block" element="em" />

								<!-- <em class="help-block">Please enter brand name!</em> -->
							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="description">Product
								Description:</label>

							<div class="col-md-8">
								<sf:textarea path="description" id="description" rows="4"
									placeholder="Product Description"></sf:textarea>

								<sf:errors path="description" cssClass="help-block" element="em" />


								<!-- <input type="text" name="description" id="description"
									placeholder="Product Description" class="form-control" />
									
									<em class = "help-block">Please enter product description!</em> -->
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="price">Unit
								Price:</label>

							<div class="col-md-4">

								<sf:input type="text" path="unitPrice" id="unitPrice"
									placeholder="Unit Price" class="form-control" />

								<sf:errors path="unitPrice" cssClass="help-block" element="em" />

								<!-- <em class="help-block">Please enter unit price!</em> -->
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="quantityAvailable">Quantity
								Available:</label>

							<div class="col-md-4">

								<sf:input type="text" path="quantity" id="quantity"
									placeholder="Quantity Available" class="form-control" />

								<sf:errors path="quantity" cssClass="help-block" element="em" />

								<!-- <em class="help-block">Please enter the quantity available!</em> -->
							</div>

						</div>

						<!-- File element for image upload -->
						<div class="form-group">
							<label class="control-label col-md-4" for="file">Select
								an image:</label>

							<div class="col-md-8">

								<sf:input type="file" path="file" id="file" class="form-control" />
								<sf:errors path="file" cssClass="help-block" element="em" />
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="cayegory">Select
								Category:</label>

							<div class="col-md-8">

								<sf:select class="form-control" id="categoryId"
									path="categoryId" items="${categories}" itemLabel="name"
									itemValue="id">


								</sf:select>



								<!-- <input type="text" name="categoryId" id="categoryId"
									placeholder="Select Category" class="form-control" />
									
									<em class = "help-block">Please select category!</em> -->
							</div>

						</div>

						<div class="form-group">


							<div class="col-md-offset-4 col-md-8">

								<input type="Submit" name="Submit" id="Submit" value="Submit"
									class="btn btn-primary" />

								<!-- Below using hidden elements to show the original values at the time of editing  and not the default values -->
								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="active" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />



							</div>

						</div>

					</sf:form>
				</div>




			</div>




		</div>

	</div>
	<div class="row">

		<div class="col-xs-12">
			<h3>Available Products</h3>
			<hr />
		</div>

		<div class="col-xs-12">
			<div style="overflow: auto">

				<!-- Product table for Admin -->
				<table id="adminProductsTable"
					class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Status</th>
							<th>Edit</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>12</td>
							<td><img class="adminDataTableImg"
								src="${contextRoot}/resources/images/6EC403447C.jpg" alt=" Honor 9N"/>
							</td>
							<td>Honor 9N</td>
							<td>5</td>
							<td>&#8377;13999.0</td>
							<td>
								<!-- 	Toggle Switch for Active/De-active Products --> <lable
									class="switch"> <input type="checkbox"
									checked="checked" value="12" />
								<div class="slider round"></div>
								</lable>
							</td>
							<!-- Link to edit the product -->
							<td><a href="${contextRoot}/manage/product"
								class="btn btn-warning"> <span
									class="glyphicon glyphicon-pencil"></span>
							</a></td>

						</tr>


						<tr>
							<td>12</td>
							<td><img class="adminDataTableImg"
								src="${contextRoot}/resources/images/6EC403447C.jpg" alt=" Honor 9N"/>
							</td>
							<td>Honor 9N</td>
							<td>5</td>
							<td>&#8377;13999.0</td>
							<td>
								<!-- 	Toggle Switch for Active/De-active Products --> <lable
									class="switch"> <input type="checkbox"
									checked="checked" value="12" />
								<div class="slider round"></div>
								</lable>
							</td>
							<!-- Link to edit the product -->
							<td><a href="${contextRoot}/manage/product"
								class="btn btn-warning"> <span
									class="glyphicon glyphicon-pencil"></span>
							</a></td>

						</tr>

					</tbody>


					<tfoot>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Status</th>
							<th>Edit</th>
						</tr>
					</tfoot>
				</table>


			</div>
		</div>
	</div>


</div>