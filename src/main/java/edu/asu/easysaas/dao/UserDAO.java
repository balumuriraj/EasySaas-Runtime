package edu.asu.easysaas.dao;

import edu.asu.easysaas.model.User;

public interface UserDAO {
	public User getUser(String username);
}
