package edu.asu.easysaas.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.asu.easysaas.model.User;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User getUser(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.getNamedQuery("getuser");
		query.setParameter("username", username);
		System.out.println("size of list is: "+query.list().size());
		if(query.list().size()==0){
			return null;
		}
		List<?> list = query.list();		
		return (User)list.get(0);
	}

}
