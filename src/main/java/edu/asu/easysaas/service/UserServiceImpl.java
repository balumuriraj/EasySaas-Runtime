package edu.asu.easysaas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.asu.easysaas.dao.UserDAO;
import edu.asu.easysaas.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public User getUser(String username) {
		return userDAO.getUser(username);
	}

}
