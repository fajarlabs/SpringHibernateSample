package com.skckonline.concept;

import java.util.List;

import com.skckonline.hibernate.model.Request;

public interface ICrud<T,Q> {
	
	public Q delete(T o);
	public Q add(T o);
	public Q update(T o);
	public List<T> read(T o, int start, int max);
	int count(Request r);

}
