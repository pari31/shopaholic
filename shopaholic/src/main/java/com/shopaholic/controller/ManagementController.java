package com.shopaholic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shopaholic.dao.CategoryDAO;
import com.shopaholic.dto.Category;
import com.shopaholic.dto.Product;

@Controller
@RequestMapping("/manage")
public class ManagementController {

	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping(value="/products",method=RequestMethod.GET)


public ModelAndView showManageProducts ()
{
	ModelAndView mv = new ModelAndView("page");
	mv.addObject("userClickManageProducts",true);
	mv.addObject("title", "Manage Products");
	
	/*Adding new product field*/
	 Product nproduct=  new Product();
	 nproduct.setSupplierId(1);
	 nproduct.setActive(true);
	 
	 mv.addObject("product",nproduct);
	return mv;
}
	

@ModelAttribute("categories")
public List<Category> getCategories()	
{
	return categoryDAO.list();
}
	
}
