package com.shopaholic.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shopaholic.dao.CategoryDAO;
import com.shopaholic.dao.ProductDAO;
import com.shopaholic.dto.Category;
import com.shopaholic.dto.Product;
import com.shopaholic.util.FileUploadUtility;
import com.shopaholic.validator.ProductValidator;

@Controller
@RequestMapping("/manage")
public class ManagementController {

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = "/products", method = RequestMethod.GET)

	public ModelAndView showManageProducts(@RequestParam(name = "operation", required = false) String operation) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClickManageProducts", true);
		mv.addObject("title", "Manage Products");

		/* Adding new product field */
		Product nproduct = new Product();
		nproduct.setSupplierId(1);
		nproduct.setActive(true);

		mv.addObject("product", nproduct);

		if (operation != null) {

			if (operation.equals("product")) {
				mv.addObject("message", "Product added successfully");
			}

		}

		return mv;
	}

	// Handling Product Submission

	// changes made in url changed mapping /products to /addproducts
	@RequestMapping(value = "/products", method = RequestMethod.POST)
	public String handleProductSubmission(@Valid @ModelAttribute("product") Product mproduct, BindingResult results,
			Model model,HttpServletRequest request) {
	
		new ProductValidator().validate(mproduct,results);
		
		
		
		
		// Check if there are any errors
		if (results.hasErrors()) {
			model.addAttribute("userClickManageProducts", true);
			model.addAttribute("title", "Manage Products");
			return "page";
		}

		/* System.out.println("Post request----------------------------->"); */
		/* Adding a new product Record */

		productDAO.add(mproduct);
		
/*Passing the request below to get the REALPATH*/
		
		if(!mproduct.getFile().getOriginalFilename().equals("")) {
		FileUploadUtility.uploadFile(request, mproduct.getFile(), mproduct.getCode());	
		}
		
		return "redirect:/manage/products?operation=product";

	}

	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryDAO.list();
	}

}
