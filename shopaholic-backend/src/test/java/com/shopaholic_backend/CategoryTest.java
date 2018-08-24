package com.shopaholic_backend;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shopaholic.dao.CategoryDAO;
import com.shopaholic.dto.Category;

public class CategoryTest {

	static AnnotationConfigApplicationContext context = null;
	static CategoryDAO categoryDAO = null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.shopaholic");
		context.refresh();

		// categoryDAO=new CategoryDAOImpl();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

	@Ignore
	@Test
	public void testAdd() {
		Category category = new Category();
		category.setName("Laptop");
		category.setDescription("Laptop Items");
		category.setActive(true);
		category.setImageURL("URL_" + category.getName());

		assertTrue("Fail to add Category !", categoryDAO.add(category));
	}

	//@Ignore
	@Test
	public void testUpdate() {
		Category category = categoryDAO.get(3);
		category.setName("Men");
		assertEquals("Successfully updated  the single category in the table!", true, categoryDAO.update(category));
	}

	@Ignore
	@Test
	public void testDelete() {
		Category category = categoryDAO.get(4);
		assertEquals("Successfully deleted  the single category in the table!", true, categoryDAO.delete(category));
	}

	@Ignore
	@Test
	public void testList() {
		List<Category> list=categoryDAO.list();
		
		assertEquals("Fail to get list !",3,list.size());
	}

	@Ignore
	@Test
	public void testGet() {
		Category category = categoryDAO.get(1);
		assertEquals("Successfully fetched the single category from the table!", " ", category.getName());
	}

	
}
