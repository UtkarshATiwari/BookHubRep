package com.niit.bookhub.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bookhub.dao.CategoryDAO;
import com.niit.bookhub.dao.SupplierDAO;
import com.niit.bookhub.model.Category;
import com.niit.bookhub.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@ModelAttribute("supplier")
	
	public Supplier initialize()
	{
		return new Supplier();
	}
	
	@RequestMapping(value ="/admin/addSupplier" , method = RequestMethod.POST)
	public ModelAndView addSupplier(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result, ModelMap model)
	{
		if(result.hasErrors()){
			return new ModelAndView("addsupplier");
		}
		supplierDAO.addNewSupplier(supplier);
		 return getSupplierList();
	}
	
//	@RequestMapping(value ="/admin/addSupplier" , method = RequestMethod.GET)
//		public String doaddSupplier(@Valid  Supplier supplier, BindingResult result){
//		if(result.hasErrors()){
//			return "addsupplier";
//		}
//		return "allsupplier";
//	}
	
	@RequestMapping(value={"admin/getSuppliers","supplier/edit/getSuppliers"})
	public ModelAndView getSupplierList() {
		
		List<Supplier> supplierList = supplierDAO.getAllSupplier();
		ModelAndView model = new ModelAndView("allsupplier");
		List<Category> categoryList = categoryDAO.getAllCategories();
		model.addObject("categories",categoryList);
		model.addObject("suppliers",supplierList);
		
		return model;
	}
	
	@RequestMapping(value="supplier/edit/{supplierId}", method = RequestMethod.GET)
	public ModelAndView editSupplier(@PathVariable("supplierId") int id, @ModelAttribute("supplier")Supplier supplier)
	{
		System.out.println("Editing Supplier.....");
		supplier=supplierDAO.getSupplier(id);
		//System.out.println(supplier.getSupplierName());
		//supplierDAO.edit(id,supplier);
		ModelAndView mv = new ModelAndView("editSupplier");
		mv.addObject("supplier",supplier);
		return mv;
	}
	
	@RequestMapping(value="supplier/edit/{id}", method = RequestMethod.POST)
	public String modifySupplier(@PathVariable("id") int id, @ModelAttribute("supplier")Supplier supplier)
	{
		System.out.println("editing supplier");
		supplierDAO.edit(id, supplier);
		return "redirect:/admin/getSuppliers";
	}
	
	@RequestMapping(value="supplier/delete/{supplierId}", method = RequestMethod.GET)
	public String deleteSupplier(@PathVariable("supplierId") int id, @ModelAttribute("supplier")Supplier supplier)
	{
		System.out.println("Deleting Supplier......");
		supplierDAO.delete(id);
		return "redirect:/admin/getSuppliers";
	}
	

}
