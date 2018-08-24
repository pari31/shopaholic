package com.shopaholic.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopaholic.dao.CategoryDAO;
import com.shopaholic.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	// Adding Category to the database
	@Override
	public boolean add(Category category) {
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	// Updating Category in the database
	@Override
	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// Deleting Category in the database
	@Override
	public boolean delete(Category category) {

		category.setActive(false);

		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")

	// Fetching the List of categories from the database
	@Override
	public List<Category> list() {
		try {

			return sessionFactory.getCurrentSession().createQuery("from Category where active=True").list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// Getting the single category based on id from the database
	@Override
	public Category get(int id) {
		try {
			return sessionFactory.getCurrentSession().get(Category.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/*
	 * private static List<Category> categories = new ArrayList<Category>();
	 * 
	 * static {
	 * 
	 * Category category1 = new Category();
	 * 
	 * // Adding 1st Category
	 * 
	 * category1.setId(1); category1.setName("Men");
	 * category1.setDescription("This is a Men section");
	 * category1.setImageURL("CAT_1.png"); category1.setActive(true);
	 * 
	 * // Adding category to the list
	 * 
	 * categories.add(category1);
	 * 
	 * Category category2 = new Category(); // Adding 2nd Category
	 * 
	 * category2.setId(2); category2.setName("Women");
	 * category2.setDescription("This is a Women section");
	 * category2.setImageURL("CAT_2.png"); category2.setActive(true);
	 * 
	 * // Adding category to the list
	 * 
	 * categories.add(category2);
	 * 
	 * Category category3 = new Category(); // Adding 3rd Category
	 * 
	 * category3.setId(3); category3.setName("Accessories");
	 * category3.setDescription("This is an Accesories section");
	 * category3.setImageURL("CAT_3.png"); category3.setActive(true);
	 * 
	 * // Adding category to the list
	 * 
	 * categories.add(category3);
	 * 
	 * }
	 */

}
