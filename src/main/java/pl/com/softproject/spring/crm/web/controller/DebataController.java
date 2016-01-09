/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.com.softproject.spring.crm.web.dao.DebataDAO;
import pl.com.softproject.spring.crm.web.model.Debata;

@Controller
public class DebataController {

    @Autowired
    DebataDAO debataDAO;

    @RequestMapping("singled")
    public ModelAndView singler(@RequestParam int id) {

        ModelAndView model = new ModelAndView("debatasingle");

        Debata debata = debataDAO.findOne(id);
        model.addObject("debata", debata);

        debata.setWyswietlenia(debata.getWyswietlenia() + 1);
        return model;
    }
}
