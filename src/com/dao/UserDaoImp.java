package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.beans.User;

public class UserDaoImp implements UserDao{
	
	private static SessionFactory sessionFactory;
	
	Session s = null;
	Transaction tx = null;
	String hql = null;
	Query query = null;
	
	public UserDaoImp(){
		
	}
	static {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		sessionFactory = cfg.buildSessionFactory();
	}
	public static Session getSession(){
		return sessionFactory.openSession();
	}
	
	//login========================================
	@SuppressWarnings("unchecked")
	public boolean Userlogin(User user){
		try{
			s = UserDaoImp.getSession();
			tx = s.beginTransaction();
			hql = "from User user where user.Username='"+user.getUsername()+"' and user.Password='"+user.getPassword()+"'";
			query = s.createQuery(hql);
			List<User> list = query.list();
			if(list.size()>0){
				return true;
			}
			
			tx.commit();
		}finally{
			if(s!=null){
				s.close();
			}
		}
		return false;
	}
	
	
	//regist=======================================
	public void addUser(User user){
		try{
			s = UserDaoImp.getSession();
			tx = s.beginTransaction();
			s.save(user);
			tx.commit();
		}finally{
			if(s!=null){
				s.close();
			}
		}
	}
}
