
package pl.com.softproject.spring.crm.web.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import pl.com.softproject.spring.crm.web.model.User;


public interface UserDAO extends CrudRepository<User, Integer>{
    
    public Iterable<User> findByNameLike(String name);
    
  @Query("select p from User p where p.name like :name order by p.name")
    public Iterable<User> findByJPQL(@Param("name") String name);
    
}
