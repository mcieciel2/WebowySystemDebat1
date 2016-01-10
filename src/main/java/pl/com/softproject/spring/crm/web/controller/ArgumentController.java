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
import pl.com.softproject.spring.crm.web.dao.ArgumentDAO;
import pl.com.softproject.spring.crm.web.model.Argument;

/**
 *
 * @author Marcin
 */
@Controller
public class ArgumentController {

    @Autowired
    ArgumentDAO argumentDAO;

    @RequestMapping("plus")
    public String plus(@RequestParam int id, @RequestParam int debataId) {

        Argument a = argumentDAO.findOne(id);
        a.setPlus(a.getPlus() + 1);
        argumentDAO.save(a);
        return "redirect:singled.htm?id=" + debataId;
    }

    @RequestMapping("minus")
    public String minus(@RequestParam int id, @RequestParam int debataId) {

        Argument a = argumentDAO.findOne(id);
        a.setMinus(a.getMinus() - 1);
        argumentDAO.save(a);
        return "redirect:singled.htm?id=" + debataId;
    }

}
