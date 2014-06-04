/*
 * Copyright 2011-08-31 the original author or authors.
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
import pl.com.softproject.spring.crm.web.dao.PersonDAO;
import pl.com.softproject.spring.crm.web.dao.TeamDAO;
import pl.com.softproject.spring.crm.web.model.Person;
import pl.com.softproject.spring.crm.web.model.Team;

/**
 *
 * @author Adrian Lapierre <adrian@softproject.com.pl>
 */
@Controller
@RequestMapping("/person")
public class PersonController {
    
    @Autowired
    private PersonDAO personDAO;
    
    @Autowired
    private TeamDAO teamDAO;
    
    @RequestMapping("/add")
    public ModelAndView addPerson() {
        
        ModelAndView modelAndView = new ModelAndView("addPerson");
        
        Person person = new Person();
        modelAndView.addObject("person", person);
        modelAndView.addObject("teams", teamDAO.findAll());
        
        return modelAndView;
    }
    
    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String savePerson(@Valid Person person, BindingResult binding) {
        
        if(binding.hasErrors()) {
            return "addPerson";
        } else {
            System.out.println(person);
            personDAO.save(person);
            return "redirect:/person/list.htm";
        }
    }
    
    @RequestMapping("/list")
    public ModelAndView list() {
        Iterable<Person> res = personDAO.findAll();
        
        ModelAndView model = new ModelAndView("personList");
        model.addObject("persons", res);
        
        return model;
        
    }
    
    @RequestMapping("edit")
    public ModelAndView edit(@RequestParam int id) {
        
        ModelAndView model = new ModelAndView("addPerson");
        
        Person person = personDAO.findOne(id);
        model.addObject("person", person);
        model.addObject("teams", teamDAO.findAll());
        
        return model;
    }
    
    @RequestMapping("/messages")
    public ModelAndView messages(int personId) {
        
        ModelAndView modelAndView= new ModelAndView("message_list");
        
        modelAndView.addObject("person", personDAO.findOne(personId));
        
        return modelAndView;
    }
    
    @RequestMapping("/search")
    public ModelAndView search(String name) {
        
        Iterable<Person> res = personDAO.findByJPQL(name + "%");
        
        ModelAndView model = new ModelAndView("personList");
        model.addObject("persons", res);
        
        return model;
        
    }
            
    
}
