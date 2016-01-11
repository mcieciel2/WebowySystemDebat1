package pl.com.softproject.spring.crm.web.controller;

import Komparator.KomparatorRozmowca;
import java.util.Collections;
import java.util.List;
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

    @RequestMapping("/ranking")
    public ModelAndView ranking() {

        ModelAndView model = new ModelAndView("ranking");
        Rozmowca rozmowca;
        List ranking = rozmowcaDAO.findAll();
        KomparatorRozmowca kompr = new KomparatorRozmowca();
        Collections.sort(ranking, kompr);

        for (int i = 0; i < ranking.size(); i++) {

            rozmowca = (Rozmowca) ranking.get(i);
            rozmowca.setRanking(i + 1);
            rozmowcaDAO.save(rozmowca);
        }

        model.addObject("ranking", ranking);

        return model;
    }

}
