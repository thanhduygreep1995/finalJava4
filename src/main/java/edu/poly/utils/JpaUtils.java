package edu.poly.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtils {
	private static EntityManagerFactory emf;

	public static EntityManager getEntityManager() {
		if (emf == null || emf.isOpen()) {
			emf = Persistence.createEntityManagerFactory("asmjava4");
		}
		return emf.createEntityManager();
	}

	public static void shutDown() {
		if (emf != null && emf.isOpen()) {
			emf.close();
		}
		emf = null;
	}
}
