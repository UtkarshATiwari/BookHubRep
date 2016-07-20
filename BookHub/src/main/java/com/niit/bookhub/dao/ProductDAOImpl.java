package com.niit.bookhub.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bookhub.model.Product;

@Transactional
@Repository
public class ProductDAOImpl implements ProductDAO {
	

	@Autowired
	SessionFactory mysessionFactory;
	
	public void addNewProduct(Product product)
	{
		Session session = mysessionFactory.openSession();
		Serializable objId = session.save(product);
		System.out.println(objId.toString());
		if(objId!=null)
			System.out.println("Product Added");
		else
			System.out.println("Product Cant be Added");
		session.close();
	}

	public List<Product> getAllProducts() {
		Session session = mysessionFactory.openSession();
		
		Criteria criteria=session.createCriteria(Product.class);
		List<Product> productList = criteria.list();
		session.close();
		return productList;
		
	}
	
	public Product edit(int id, Product product){
		System.out.println("Edit Product");
		Session session = mysessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Product prd =(Product)session.get(Product.class,id);
		prd.setDescription(product.getDescription());
		prd.setName(product.getName());
		prd.setPrice(product.getPrice());
		System.out.println(prd.getDescription());
		session.saveOrUpdate(prd);
		tx.commit();
		session.close();
		return prd;
	}

	public Product getProduct(int id) {
		
		Session session = mysessionFactory.openSession();
		Product prd = (Product)session.get(Product.class,id);
		return prd;
	}

	public void delete(int id){
		System.out.println("Delete Product");
		Session session = mysessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Product prd =(Product)session.load(Product.class,id);
		
		session.delete(prd);
		tx.commit();
		session.close();
		
	}

	public Product view(int id, Product product){
		System.out.println("Show Product");
		Session session = mysessionFactory.openSession();
		Product prd =(Product)session.get(Product.class,id);
		prd.setDescription(product.getDescription());
		prd.setName(product.getName());
		prd.setPrice(product.getPrice());
		System.out.println(prd.getDescription());
		session.close();
		return prd;
	}	
}


