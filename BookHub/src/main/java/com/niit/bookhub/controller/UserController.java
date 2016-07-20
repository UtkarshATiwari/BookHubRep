package com.niit.bookhub.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bookhub.dao.AuthorityDAO;
import com.niit.bookhub.dao.UserDAO;
import com.niit.bookhub.model.Authority;
import com.niit.bookhub.model.User;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;

	@Autowired
	AuthorityDAO authorityDAO;

	@ModelAttribute("user")
	public User init() {
		return new User();
	}

//	@ModelAttribute("authority")
//	public Authority initiate(){
//		return new Authority();
//	}
	
	@RequestMapping(value = "addUser")
	public ModelAndView addUser(@Valid @ModelAttribute("user") User user, BindingResult result, ModelMap model) {
		Authority authority = authorityDAO.getAuthorityById(2);
		user.setAuthority(authority);
		if(result.hasErrors()){
			return new ModelAndView("newsignup");
		}
		System.out.println("adding user " + user.getUsername());
		userDAO.addNewUser(user);
		return new ModelAndView("newlogin");
	}

	@RequestMapping(value = "/validateUser", method = RequestMethod.POST)
	public ModelAndView getUser(@ModelAttribute("User") User user, ModelMap model) {
		System.out.println(user.getUsername());
		boolean flag = userDAO.getUser(user);
		if (flag)
			return new ModelAndView("index");
		else {
			ModelAndView mv = new ModelAndView("newlogin");
			mv.addObject("error", "Invalid username and password!");
			return mv;
		}
	}
	@RequestMapping(value="/perform_logout")
	public ModelAndView logoutPage (HttpServletRequest request, HttpServletResponse response) {
	//public ModelAndView logoutPage () {
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	System.out.println("logging out");
	if (auth != null){
		System.out.println("logging out");
	new SecurityContextLogoutHandler().logout(request, response, auth);
	}
	return new ModelAndView("redirect:/newlogin?logout");//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
}
