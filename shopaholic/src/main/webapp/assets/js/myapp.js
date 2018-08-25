$(function() {

	// Solving the active menu problem
	switch (menu) {
	case 'Home':
		$('#home').addClass('active');
		break;
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;
	default:
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	}

	/* Code for jquery datatable */
	
	var $table = $("#productListTable");

	// The below code gets executed only when the table is present in the
	// viewProducts

	
	if ($table.length>0) {

		console.log("Inside the table!");
		var jsonUrl = '';
		
		if(window.categoryId == '')
			{
			jsonUrl = window.contextRoot+'/json/data/all/products';
			}
		else
			{
			jsonUrl = window.contextRoot+'/json/data/category/'+window.categoryId+'/products';
			
			}
			
			
			}
	
		$table.DataTable({
			lengthMenu: [
				[3,5,10,-1],
				['3 Records','5 Records','10 Records','All Records']],
			pageLength: 5,
			ajax: {
				url: jsonUrl,
				dataSrc: ""
											
			},
			columns: [
				
				{
					data : 'code',
					mRender: function(data,type,row)
					{
						
						return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg" class ="dataTableImg"/>'
					}
				},
				
				{
					data : 'name'
				},
				{
					data : 'brand'
				},
				{
					data : 'description'
				},
				{
					data : 'unitPrice',
					mRender : function(data,type,row)
					{
						return '&#8337; ' +data
					}
				},
				{
					data : 'quantity',
					mRender : function(data,type,row)
					{
					if(data < 1){
						return '<i style="color:red">Out of Stock!</i>';
					}
					
					return data;
					
					}
				},
				{
					data : 'id',
					bSortable : false,
					mRender : function(data,type,row)
					{
						var str = '';
						str+='<a href="'+window.contextRoot+ '/show/'+data+'/product" class="btn btn-info"><i class="fas fa-eye"></i></a> &#160';
						if(row.quantity < 1){
							
							str+='<a href="javascript:void(0)" class="btn btn-success disabled"><i class="fas fa-cart-plus"></i></a>';
							return str;
							
						}
						
						else{
							str+='<a href="'+window.contextRoot+ '/cart/add/'+data+'/product" class="btn btn-success"><i class="fas fa-cart-plus"></i></a>';
							return str;
							
						}
						
					}
				}
			]
		
		});
});