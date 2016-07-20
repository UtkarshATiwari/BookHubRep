package com.niit.bookhub.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bookhub.dao.CategoryDAO;
import com.niit.bookhub.model.Category;


@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@ModelAttribute("category")
	public Category initi()
	{
		return new Category();
	}
	
	@RequestMapping(value = "/admin/addCategory" , method = RequestMethod.POST)
		public ModelAndView addCategory(@ModelAttribute("Category") Category category, ModelMap model){
		 categoryDAO.addNewCategory(category);
		 return getCategoryList();
	}
	
	@RequestMapping(value={"admin/getCategories","category/edit/getCategories"})
	public ModelAndView getCategoryList() {
		
		List<Category> categoryList = categoryDAO.getAllCategories();
		ModelAndView model = new ModelAndView("allcategories");
		System.out.println(categoryList.size());
		model.addObject("categories",categoryList);
		
		return model;
	}
	
	@RequestMapping(value="category/edit/{categoryId}", method = RequestMethod.GET)
	public ModelAndView editCategory(@PathVariable("categoryId") int id, @ModelAttribute("category")Category category)
	{
		System.out.println("Editing Category.....");
		category=categoryDAO.getCategory(id);
		//System.out.println(category.getName());
		//categoryDAO.edit(id,category);
		ModelAndView mv = new ModelAndView("editCategory");
		mv.addObject("category",category);
		return mv;
	}
	
	@RequestMapping(value="category/edit/{id}", method = RequestMethod.POST)
	public String modifyCategory(@PathVariable("id") int id, @ModelAttribute("category")Category category)
	{
		System.out.println("editing category");
		categoryDAO.edit(id, category);
		return "redirect:/admin/getCategories";
	}
	
	@RequestMapping(value="category/delete/{categoryId}", method = RequestMethod.GET)
	public String deleteCategory(@PathVariable("categoryId") int id, @ModelAttribute("category")Category category)
	{
		System.out.println("Deleting Category......");
		categoryDAO.delete(id);
		return "redirect:/admin/getCategories";
	}

	
}
