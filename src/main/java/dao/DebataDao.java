/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import org.springframework.data.jpa.repository.JpaRepository;
import model.Debata;


/**
 *
 * @author Marcin
 */
public interface DebataDao extends JpaRepository<Debata, Integer>{
    
    
    
}
