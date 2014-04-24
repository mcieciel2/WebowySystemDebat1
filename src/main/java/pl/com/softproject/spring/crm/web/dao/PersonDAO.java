/*
 * Copyright 2011-08-31 the original author or authors.
 */

package pl.com.softproject.spring.crm.web.dao;

import org.springframework.data.repository.CrudRepository;
import pl.com.softproject.spring.crm.web.model.Person;

/**
 *
 * @author Adrian Lapierre <adrian@softproject.com.pl>
 */
public interface PersonDAO extends CrudRepository<Person, Integer>{
    
}
