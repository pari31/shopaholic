package com.shopaholic_backendtest;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shopaholic.dao.UserDAO;
import com.shopaholic.dto.User;

public class UserTest {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.shopaholic_backend");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");
	}
	

	@Test
	public void testAddUser() {
		
		user = new User() ;
		user.setFirstName("Vikram");
		user.setLastName("Kapoor");
		user.setEmail("Vikram_k@gmail.com");
		user.setContactNumber("9865243241");
		user.setRole("CUSTOMER");
		user.setEnabled(true);
		user.setPassword("12345");
		
		
		
		// Adding the user
		assertEquals("Failed to add the user!", true, userDAO.add(user));	
	
	}
	

	

	
}
