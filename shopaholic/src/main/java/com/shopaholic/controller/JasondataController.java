package com.shopaholic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shopaholic.dao.ProductDAO;
import com.shopaholic.dto.Product;

@Controller
@RequestMapping("/json/data")
public class JasondataController {
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/all/products")
	/*Using @ResponseBody to send the data in the form of jason*/
	@ResponseBody
	public List<Product> getAllProducts()
	{
				return productDAO.listActiveProducts();
	}
	
	@RequestMapping("/category/{id}/products")
	@ResponseBody
	public List<Product> getProductsByCategory(@PathVariable int id)
	{
				return productDAO.listActiveProductsByCategory(id);
	}

}