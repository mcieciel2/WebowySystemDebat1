/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.dao;

/**
 *
 * @author Marcin
 */
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.com.softproject.spring.crm.web.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    public User findByUserName(String username);

}
