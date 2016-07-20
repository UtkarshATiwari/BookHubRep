package com.niit.bookhub.controller;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;

 
import com.niit.bookhub.dao.ProductDAO;
import com.niit.bookhub.model.Category;
import com.niit.bookhub.model.Product;
import com.niit.bookhub.model.Supplier;

public class ProductPropertyEditor extends PropertyEditorSupport {
	 
	ProductDAO productDAO;
	
	public ProductPropertyEditor(ProductDAO productDAO)
	{
		this.productDAO=productDAO;
		System.out.println("calling constructor");
	}
	
	public void setAsText(String incoming)
	{
		
		Product product =  productDAO.getProduct(Integer.parseInt(incoming));
		Category category = product.getCategory();
		setValue(category);
		Supplier supplier = product.getSupplier();
		setValue(supplier);
		
		System.out.println("calling setAsText " + incoming);
		
	}
	public String getAsText()
	{
		System.out.println("calling getAsText");
		return new Integer(((Product)getValue()).getProductId()).toString();
	}

}
