/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.com.softproject.spring.crm.web.model.Debata;


/**
 *
 * @author Marcin
 */
public interface DebataDAO extends JpaRepository<Debata, Integer>{
    
    
    
}

