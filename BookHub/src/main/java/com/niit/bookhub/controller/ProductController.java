package com.niit.bookhub.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bookhub.dao.CartDAO;
import com.niit.bookhub.dao.CategoryDAO;
import com.niit.bookhub.dao.ProductDAO;
import com.niit.bookhub.dao.SupplierDAO;
import com.niit.bookhub.model.Cart;
import com.niit.bookhub.model.Category;
import com.niit.bookhub.model.Product;
import com.niit.bookhub.model.Supplier;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;

	@ModelAttribute("product")
	public Product initProduct()
	{
		return new Product();
	}
	
	@ModelAttribute("cart")
	public Cart initCart()
	{
		return new Cart();
	}
	
	@InitBinder
	public void dataBinding(WebDataBinder binder) {
		 binder.registerCustomEditor(Category.class,  new ProductPropertyEditor(productDAO));
		 
 		 binder.registerCustomEditor(Supplier.class,  new ProductPropertyEditor(productDAO));
	//	binder.registerCustomEditor(Date.class, "dob", new CustomDateEditor(dateFormat, true));
	}
	
//	@RequestMapping(value = "admin/addProduct" , method = RequestMethod.POST)
//		public ModelAndView addProduct(@ModelAttribute  Product product,HttpServletRequest request){
//		System.out.println("Adding Product ");
//		Category cat = categoryDAO.getCategory(33);
//		Supplier supp = supplierDAO.getSupplier(33);
//		product.setCategory(cat);
//		product.setSupplier(supp);
//		 productDAO.addNewProduct(product);
//		 File file = new File(request.getServletContext().getRealPath("./resources/images/" + product.getProductId() + ".jpg"));
//		 if(!product.getImg().isEmpty())
//		 {
//			 try {
//				FileUtils.writeByteArrayToFile(file, product.getImg().getBytes());
//				System.out.println("File uploaded");
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			 
//		 }
//		 return getProductList();
//	}
	
	@RequestMapping(value = "admin/addProduct" , method = RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute Product product, BindingResult result, @RequestParam Category category, HttpServletRequest request, ModelMap model){
	System.out.println("Adding Product ");
	//Category cat = catDAO.getCategory(id)
	 productDAO.addNewProduct(product);
	File file = new File(request.getServletContext().getRealPath("/resources/images/")+ product.getProductId()+".jpg");//---in server
	System.out.println(request.getServletContext().getRealPath("/resources/images/")+ product.getProductId()+".jpg");
		//	File file = new File("/resources/images/"+ product.getProductId()+".jpg");
		System.out.println(file.getAbsolutePath() + " " + file.getName());
	
		if(!product.getImg().isEmpty())	 
		try {
			FileUtils.writeByteArrayToFile(file, product.getImg().getBytes());
			 
			System.out.println("File Uploaded");
		} catch (IOException e) {
		e.printStackTrace();
		}	
	 return getProductList();
}

	
	@RequestMapping(value={"admin/getProducts","product/edit/getProducts"})
	public ModelAndView getProductList() {
		
		List<Product> productList = productDAO.getAllProducts();
		ModelAndView model = new ModelAndView("allproduct");
		List<Category> categoryList = categoryDAO.getAllCategories();
		model.addObject("categories",categoryList);
		System.out.println(productList.size());
		model.addObject("products",productList);
		return model;
	}
	
	@RequestMapping(value="product/edit/{productId}", method = RequestMethod.GET)
	public ModelAndView editProduct(@PathVariable("productId") int id, @ModelAttribute("product")Product product)
	{
		System.out.println("Editing Product.....");
		product=productDAO.getProduct(id);
		System.out.println(product.getName());
		//productDAO.edit(id,product);
		ModelAndView mv = new ModelAndView("editProduct");
		mv.addObject("product",product);
		return mv;
	}
	
	@RequestMapping(value="product/edit/{id}", method = RequestMethod.POST)
	public String modifyProduct(@PathVariable("id") int id, @ModelAttribute("product")Product product)
	{
		System.out.println("editing product");
		productDAO.edit(id, product);
		return "redirect:/admin/getProducts";
	}
	
	@RequestMapping(value="product/delete/{productId}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("productId") int id, @ModelAttribute("product")Product product)
	{
		System.out.println("Deleting Product......");
		productDAO.delete(id);
		return "redirect:/admin/getProducts";
	}
	
	@RequestMapping(value="bookdetails/{productId}", method = RequestMethod.GET)
	public ModelAndView viewProduct(@PathVariable("productId") int id, @ModelAttribute("product")Product product)
	{
		System.out.println("Showing Product.....");
		product=productDAO.getProduct(id);
		System.out.println(product.getName());
		//productDAO.edit(id,product);
		ModelAndView mv = new ModelAndView("bookdetails");
		mv.addObject("product",product);
		return mv;
	}
	
	@RequestMapping(value="/user/addtocart",method=RequestMethod.POST)
	public ModelAndView addToCart(@ModelAttribute Cart cart,@RequestParam("productId")int productId,@RequestParam("quantity")int quantity)
	{
		System.out.println("Adding to cart");
		cart.setProductId(productId);
		
 		cartDAO.addToCart(cart);
 	 	List cartList = cartDAO.getCart();
		ModelAndView model = new ModelAndView("/flow/cart");
 		model.addObject("cartList",cartList);
		model.addObject("cartId",cart.getCartId());
		return model;
	}
	
	@RequestMapping(value="/user/viewcart")
	public ModelAndView viewCart(@ModelAttribute Cart cart)
	{
		List cartList = cartDAO.getCart();
		ModelAndView model = new ModelAndView("/flow/cart");
 		model.addObject("cartList",cartList);
		model.addObject("cartId",cart.getCartId());
		return model;
	}
	
	@RequestMapping(value={"/collectbillinginfo","/user/collectbillinginfo"})
	public String collectBilling(@RequestParam("cartId") int cartId, @ModelAttribute("cart") Cart cart)
	{
		Cart mycart = cartDAO.findById(cartId); 
		
		System.out.println(mycart + " : "  + cartId);
		return "redirect:/cart?cartId="+cartId;
	}
	
	@RequestMapping(value="cart/delete/{cartId}", method = RequestMethod.GET)
	public String deleteCart(@PathVariable("cartId") int id, @ModelAttribute("cart")Cart cart)
	{
		System.out.println("Deleting Cart......");
		cartDAO.delete(id);
		return "redirect:/user/viewcart";
	}
}