package com.niit.bookhub.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bookhub.beans.Book;
import com.niit.bookhub.dao.BookDAO;
import com.niit.bookhub.dao.CategoryDAO;
import com.niit.bookhub.dao.ProductDAO;
import com.niit.bookhub.dao.SupplierDAO;
import com.niit.bookhub.model.Category;
import com.niit.bookhub.model.Product;
import com.niit.bookhub.model.Supplier;
import com.niit.bookhub.model.User;

@Controller
public class BookController {

	@Autowired
	ProductDAO bookDAO;

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	

	
	
	
	@RequestMapping(value= {"/","/admin/"})
	public ModelAndView indexPage()
	{
		List<Category> categoryList = categoryDAO.getAllCategories();
		ModelAndView model = new ModelAndView("index");
		model.addObject("categories",categoryList);
		return model;
	}
	@ModelAttribute("categories")
	public List<Category> allCategories()
	{
		 
		
		List<Category> categoryList = categoryDAO.getAllCategories();
		return categoryList;
	}
	@ModelAttribute("suppliers")
	public List<Supplier> allSuppliers()
	{
		List<Supplier> supplierList = supplierDAO.getAllSupplier();
		
		return supplierList;
	}
	@RequestMapping(value = "admin/addProduct" , method = RequestMethod.GET)
	public ModelAndView addProduct(@ModelAttribute("Product") Product product, ModelMap model)
	{
		ModelAndView mv = new ModelAndView("addproduct");
		return mv;
	}


	@RequestMapping("/allbooks")
	public ModelAndView toAllBooks() {
		List<Product> bookList = bookDAO.getAllProducts();
	
		ModelAndView mv = new ModelAndView("allbooks");
		mv.addObject("booklist", bookList);
		return mv;

	}
	
	@RequestMapping("/getContactUs")
	public ModelAndView getContactUs() {
		ModelAndView model = new ModelAndView("contact");
		List<Category> categoryList = categoryDAO.getAllCategories();
		model.addObject("categories",categoryList);
		return model;
	}
	
	@RequestMapping("/getBilling")
	public ModelAndView getBilling() {
		ModelAndView model = new ModelAndView("billing");
		List<Category> categoryList = categoryDAO.getAllCategories();
		model.addObject("categories",categoryList);
		return model;
	}
	

	@RequestMapping("/getAboutUs")
	public String getAboutUs() {
		return "about";
	}

	@ModelAttribute("user")
	public User init() {
		return new User();
	}

	@ModelAttribute("category")
	public Category initi() {
		return new Category();
	}
	
	@ModelAttribute("supplier")
	public Supplier initialize(){
		return new Supplier();
	}
	@ModelAttribute("product")
	public Product initProduct()
	{
		return new Product();
	}

	@RequestMapping(value="/getSignUp",method = RequestMethod.GET)
	public ModelAndView getSignUp(@ModelAttribute("user") User user) {
		return new ModelAndView("newsignup");
	}

	@RequestMapping("/getLogin")
	public String getLogin() {
		return "newlogin";
	}

	@RequestMapping("/admin/addCategoryPage")
	public String addCategory() {
		return "addcategory";
	}
	
	@RequestMapping("/editCategory")
	public String editCategory(){
		return "editCategory";
	}
	
	@RequestMapping(value={"/addSupplierPage","/admin/addSupplierPage"})
	public String addSupplier(){
		return "addsupplier";
	}
	
	@RequestMapping("/editSupplier")
	public String editSupplier(){
		return "editSupplier";
	}
	
	
	@RequestMapping("/editProduct")
	public String editProduct(){
		return "editProduct";
	}
	
}