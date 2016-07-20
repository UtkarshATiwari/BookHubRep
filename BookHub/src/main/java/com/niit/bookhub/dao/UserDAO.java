package com.niit.bookhub.dao;

import com.niit.bookhub.model.User;

public interface UserDAO {

	public void addNewUser(User user);
	public boolean getUser(User user);
	//public boolean isValidUser(String name, String password);
}
