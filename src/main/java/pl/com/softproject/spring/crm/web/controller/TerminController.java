/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.controller;


import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.com.softproject.spring.crm.web.dao.KategoriaDAO;
import pl.com.softproject.spring.crm.web.dao.TerminDAO;
import pl.com.softproject.spring.crm.web.model.Termin;



@Controller
@RequestMapping("/termin")
public class TerminController {
    
   @Autowired
   private TerminDAO terminDAO;
   
   @Autowired
   private KategoriaDAO kategoriaDAO;
   
  

            
    
}
