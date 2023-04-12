package edu.poly.utils;



import javax.persistence.PrePersist;
import javax.persistence.PreRemove;
import javax.persistence.PreUpdate;

import org.jboss.logging.Logger;

public class MyEntityListener {
	Logger log = Logger.getLogger(MyEntityListener.class);
	public MyEntityListener() {
		//TODO Auto-generated constructor stub
	}
	@PrePersist
	@PreRemove
	@PreUpdate
	public void handleLifeCycleEvent(Object entity) {
		log.info(entity);
	}
}
