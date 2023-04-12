package edu.poly.dao;

import edu.poly.entity.User;

public class UserDAO extends AbstractEntityDAO<User> {

	public UserDAO() {
		super(User.class);
	}
	
}
