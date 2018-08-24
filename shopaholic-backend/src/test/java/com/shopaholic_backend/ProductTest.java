package com.shopaholic_backend;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shopaholic.dao.ProductDAO;
import com.shopaholic.dto.Product;

import net.bytebuddy.implementation.bytecode.ByteCodeAppender.Size;

public class ProductTest {

	static AnnotationConfigApplicationContext context = null;
	static ProductDAO productDAO = null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.shopaholic");
		context.refresh();

		productDAO = (ProductDAO) context.getBean("productDAO");

	}

	/* Creating Product */
	//@Ignore
	@Test
	public void testAdd() {
		Product product = new Product();
		product.setName("Laptop-HP 15q Core i3 7th Gen ");
		product.setBrand("HP ");
		product.setDescription("HP 15q Core i3 7th Gen - (8 GB/1 TB HDD/DOS) 15q-bu038TU Laptop (15.6 inch, Sparkling Black, 2.1 kg)");
		product.setUnitPrice(29990);
		product.setActive(true);
		// product.setImageURL("URL_" + product.getName());
		product.setCategoryId(5);
		product.setSupplierId(6);
		assertTrue("Fail to add the Product !", productDAO.add(product));
	}

	/* Updating the Category Product */
	@Ignore
	@Test
	public void testUpdate() {
		Product product = productDAO.get(5);
		product.setName("Television-BPL 109 cm Full HD LED TV ");
		product.setBrand("BPL");
		product.setDescription("BPL 109 cm (43 inches) Vivid BPL109F2010J Full HD LED TV (Black)");
		product.setUnitPrice(17990);
		product.setActive(true);
		// product.setImageURL("URL_" + product.getName());
		product.setCategoryId(4);
		product.setSupplierId(2);
		assertTrue("Fail to update the Product !", productDAO.update(product));
	}

	/* Deleting or Inactive the Category Product */
    @Ignore
	@Test
	public void testDelete() {
		Product product = productDAO.get(2);
		assertEquals("Successfully deleted  the single category in the table!", true, productDAO.delete(product));
	}
    
/*Fetching list of products*/
	@Ignore
	@Test
	public void testList() {
		List<Product> list = productDAO.list();

		assertEquals("Fail to get list !", 2, list.size());
	}

	
	
	/*Fetching the Active Product List from the table*/
	@Ignore
	@Test
	public void testListActiveProducts() {
		assertEquals("Successfully fetched the Active Product List from the table!",1, productDAO.listActiveProducts().size());
	}
	
	/*Fetching the Active Product List from the table based on Category Id*/
	@Ignore
	@Test
	public void testListActiveProductsByCategory() {
		assertEquals("Successfully fetched the Active Product List from the table based on Category Id!",1, productDAO.listActiveProductsByCategory(1).size());
	}
	
	/*Fetching the Latest Active Product List*/
	@Ignore
	@Test
	public void testGetLatestActiveProducts() {
		assertEquals("Successfully fetched the Latest Active Product List from the table!",1, productDAO.getLatestActiveProducts(1).size());
	}
}
