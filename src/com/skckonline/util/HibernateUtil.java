package com.skckonline.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static SessionFactory INSTANCE;

	public static SessionFactory getSessionFactory() {
		/**
		 * If instance or SessionFactory is closed create
		 * new session factory
		 */
		if (INSTANCE == null || INSTANCE.isClosed()) {
			INSTANCE = null; // Clean
			try {
				// For Annotation
				INSTANCE = new Configuration().configure()
						.buildSessionFactory();
			} catch (Throwable ex) {
				throw new ExceptionInInitializerError(ex);
			}
		}
		return INSTANCE;
	}

	public static void shutdown() {
		// Close caches and connection pools
		getSessionFactory().close();
	}

}