package com.skckonline.hibernate.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.skckonline.concept.ICrud;
import com.skckonline.hibernate.model.Request;
import com.skckonline.hibernate.model.User;
import com.skckonline.util.HibernateUtil;

public class UserDAOImpl implements ICrud<User, Boolean> {

	private String table = "User";

	@Override
	public Boolean delete(User o) {
		Boolean success = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.delete(o);
			tx.commit();
			session.close();
			success = true;
		} catch (Exception e) {
			success = false;
			e.printStackTrace();
		}

		return success;
	}

	@Override
	public Boolean add(User o) {
		// TODO Auto-generated method stub
		Boolean success = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(o);
			tx.commit();
			session.close();
			success = true;
		} catch (Exception e) {
			success = false;
			e.printStackTrace();
		}
		return success;
	}

	@Override
	public Boolean update(User o) {
		// TODO Auto-generated method stub
		Boolean success = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(o);
			tx.commit();
			session.close();
			success = true;
		} catch (Exception e) {
			success = false;
			e.printStackTrace();
		}

		return success;
	}

	@Override
	public List<User> read(User o, int start, int max) {
		// TODO Auto-generated method stub
		List<User> result = new ArrayList<User>();

		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Query q = session.createQuery("FROM " + this.table);
			q.setFirstResult(start);
			q.setMaxResults(max);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	public List<User> searchUserPass(String username, String password) {
		List<User> result = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Query q = session.createQuery("FROM "+this.table+" WHERE username = :userName AND password = :userPass");
			q.setString("userName",username);
			q.setString("userPass",password);
			result = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}

	@Override
	public int count(Request r) {
		// TODO Auto-generated method stub
		return 0;
	}
}
