package com.shopaholic_backendtest;
import static org.junit.Assert.assertEquals;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shopaholic.dao.SupplierDAO;
import com.shopaholic.dto.Supplier;

public class SupplierTest {

	private static AnnotationConfigApplicationContext context;
	private static SupplierDAO supplierDAO;
	private Supplier supplier = null;
	
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.shopaholic_backend");
		context.refresh();
		
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
	}

	@Test
	public void testAddSupplier() {
		supplier=new Supplier();
		
		supplier.setSupplierName("Initiative Data Systems Pvt.Ltd.");
		
		// add the supplier
				assertEquals("Failed to add the supplier!", true, supplierDAO.insertSupp(supplier));	
	}
	@Ignore
	@Test
	public void testUpdateSupplier() {
		supplier=new Supplier();
		supplier.setSid(1);
		supplier.setSupplierName("Initiative Data Systems Pvt.Ltd.");
		
		// update the supplier
				assertEquals("Failed to update the supplier!", true, supplierDAO.updateSupp(supplier));	
	}
	@Ignore
	@Test
	public void testDeleteSupplier() {
		
		
		// delete the supplier
				assertEquals("Failed to delete the supplier!", true, supplierDAO.deleteSupp(1));	
	}

}
