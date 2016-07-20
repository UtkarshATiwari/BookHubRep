package com.niit.bookhub.dao;

import java.util.List;

import com.niit.bookhub.model.Product;

public interface ProductDAO {
	
	public void addNewProduct(Product product);
	public List<Product> getAllProducts();
	public Product edit(int id, Product product);
	public Product getProduct(int id);
	public void delete(int id);
}
