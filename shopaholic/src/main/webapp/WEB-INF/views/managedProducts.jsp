<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">

	<div class="row">

		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-primary">

				<div class="panel-heading">


					<h4>Product Management</h4>


				</div>

				<div class="panel-body">

					<!-- FORM ELEMENTS -->

					<sf:form class="form-horizontal" modelAttribute="product">

						<div class="form-group">

							<label class="control-label col-md-4" for="name">Enter
								Product Name:</label>

							<div class="col-md-4">

								<sf:input type="text" path="name" id="name"
									placeholder="Product Name" class="form-control" />

								<em class="help-block">Please enter product name!</em>
							</div>

						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="brand">Enter
								Brand Name:</label>

							<div class="col-md-4">

								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />

								<em class="help-block">Please enter brand name!</em>
							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="description">Product
								Description:</label>

							<div class="col-md-8">
								<sf:textarea path="description" id="description" rows="4"
									placeholder="Product Description"></sf:textarea>

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

								<em class="help-block">Please enter unit price!</em>
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="quantityAvailable">Quantity
								Available:</label>

							<div class="col-md-4">

								<sf:input type="text" path="quantity" id="quantity"
									placeholder="Quantity Available" class="form-control" />

								<em class="help-block">Please enter the quantity available!</em>
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="cayegory">Select
								Category:</label>

							<div class="col-md-8">

								<sf:select class="form-control" id="categoryId"
									path="categoryId"
							
							items="${categories}"
							itemLabel="name"
							itemValue="id">
							
							
						</sf:select>



								<!-- <input type="text" name="categoryId" id="categoryId"
									placeholder="Select Category" class="form-control" />
									
									<em class = "help-block">Please select category!</em> -->
							</div>

						</div>

						<div class="form-group">


							<div class="col-md-offset-4 col-md-8">

								<input type="submit" name="submit" id="submit" value="submit"
									class="btn btn-primary" />

								<!-- Below using hidden elements to show the original values at the time of editing  and not the default values -->
								<sf:hidden path="id"/>
								<sf:hidden path="code"/>
								<sf:hidden path="active"/>
								<sf:hidden path="supplierId"/>
								<sf:hidden path="purchases"/>
								<sf:hidden path="views"/>



							</div>

						</div>

					</sf:form>
				</div>




			</div>




		</div>

	</div>



</div>