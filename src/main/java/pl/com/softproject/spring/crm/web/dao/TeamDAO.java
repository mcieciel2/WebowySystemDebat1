
package pl.com.softproject.spring.crm.web.dao;

import org.springframework.data.repository.CrudRepository;
import pl.com.softproject.spring.crm.web.model.Team;

public interface TeamDAO  extends CrudRepository<Team, Integer>{
    
}
