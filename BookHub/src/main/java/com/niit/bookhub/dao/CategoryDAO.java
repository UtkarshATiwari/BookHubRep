package com.niit.bookhub.dao;

import java.util.List;

import com.niit.bookhub.model.Category;

public interface CategoryDAO {
	
	public void addNewCategory(Category category);
	public List<Category> getAllCategories();
	public Category edit(int id, Category category);
	public Category getCategory(int id);
	public void delete(int id);
}
