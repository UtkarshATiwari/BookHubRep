package com.niit.bookhub.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bookhub.model.Category;

@Transactional
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	

	@Autowired
	SessionFactory mysessionFactory;
	
	public void addNewCategory(Category category)
	{
		Session session = mysessionFactory.openSession();
		Serializable objId = session.save(category);
		System.out.println(objId.toString());
		if(objId!=null)
			System.out.println("Category Added");
		else
			System.out.println("Category Cant be Added");
		session.close();
	}

	public List<Category> getAllCategories() {
		Session session = mysessionFactory.openSession();
		
		Criteria criteria=session.createCriteria(Category.class);
		List<Category> categoryList = criteria.list();
		session.close();
		return categoryList;
		
	}
	
	public Category edit(int id, Category category){
		System.out.println("Edit Category");
		Session session = mysessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Category cat =(Category)session.get(Category.class,id);
		cat.setDescription(category.getDescription());
		cat.setName(category.getName());
		System.out.println(cat.getDescription());
		session.saveOrUpdate(cat);
		tx.commit();
		session.close();
		return cat;
	}

	public Category getCategory(int id) {
		
		Session session = mysessionFactory.openSession();
		Category category = (Category)session.get(Category.class,id);
		return category;
	}

	public void delete(int id){
		System.out.println("Delete Category");
		Session session = mysessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Category cat =(Category)session.load(Category.class,id);
		
		session.delete(cat);
		tx.commit();
		session.close();
		
	}
	
}

