
package dao;


import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.Repository;
import model.Uzytkownik;



public interface UzytkownikDao extends JpaRepository<Uzytkownik, Integer>{
    

    
 //public Iterable<Uzytkownik> findByNameLike(String login);
    
//  @Query("select p from Uzytkownik p where p.login like :login order by p.login")
 //   public Iterable<User> findByJPQL(@Param("login") String login);
    
}