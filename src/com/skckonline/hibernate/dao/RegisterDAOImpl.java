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

public class RegisterDAOImpl implements ICrud<Request, Boolean> {
	
	private String table = "Request";

	@Override
	public Boolean delete(Request o) {
		// TODO Auto-generated method stub
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
	public Boolean add(Request o) {
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
	public Boolean update(Request o) {
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
	public List<Request> read(Request o, int start, int max) {
		// TODO Auto-generated method stub
		List<Request> result = new ArrayList<Request>();

		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Query q = session.createQuery("FROM " + this.table);
			q.setFirstResult(start);
			q.setMaxResults(max);
			result = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	
	@Override
	public int count(Request r){
		int count = 0;
		Session s = HibernateUtil.getSessionFactory().openSession();
		Query q = s.createQuery("SELECT COUNT(*) AS c FROM "+this.table+"");
		count = q.list().size();
		return count;
	}
}
