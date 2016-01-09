package pl.com.softproject.spring.crm.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.com.softproject.spring.crm.web.dao.RozmowcaDAO;
import pl.com.softproject.spring.crm.web.model.Rozmowca;

@Controller
public class RozmowcaController {

    @Autowired
    RozmowcaDAO rozmowcaDAO;

    @RequestMapping("singler")
    public ModelAndView singler(@RequestParam int id) {

        ModelAndView model = new ModelAndView("rozmowcasingle");

        Rozmowca rozmowca = rozmowcaDAO.findOne(id);
        model.addObject("rozmowca", rozmowca);

        return model;
    }
}
