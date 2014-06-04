/*
 * Copyright 2011-08-31 the original author or authors.
 */

package pl.com.softproject.spring.crm.web.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import pl.com.softproject.spring.crm.web.model.Person;

/**
 *
 * @author Adrian Lapierre <adrian@softproject.com.pl>
 */
public interface PersonDAO extends CrudRepository<Person, Integer>{
    
    public Iterable<Person> findByNameLike(String name);
    
    @Query("select p from Person p where p.name like :name order by p.name")
    public Iterable<Person> findByJPQL(@Param("name") String name);
    
}
