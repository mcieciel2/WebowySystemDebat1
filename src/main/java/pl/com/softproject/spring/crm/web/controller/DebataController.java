/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.controller;

import Komparator.KomparatorDebata;
import Komparator.KomparatorRozmowca;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.com.softproject.spring.crm.web.dao.DebataDAO;
import pl.com.softproject.spring.crm.web.dao.RozmowcaDAO;
import pl.com.softproject.spring.crm.web.model.Debata;
import pl.com.softproject.spring.crm.web.model.Rozmowca;

@Controller
public class DebataController {

    @Autowired
    DebataDAO debataDAO;
    @Autowired
    RozmowcaDAO rozmowcaDAO;

    @RequestMapping("singled")
    public ModelAndView singler(@RequestParam int id) {

        ModelAndView model = new ModelAndView("debatasingle");

        Debata debata = debataDAO.findOne(id);
        model.addObject("debata", debata);

        debata.setWyswietlenia(debata.getWyswietlenia() + 1);
        debataDAO.save(debata);
        debata.setVideo(debata.getVideo().replace("watch?v=", "embed/"));
        return model;
    }

    @RequestMapping("/index")
    public ModelAndView index() {

        ModelAndView model = new ModelAndView("index");
        Rozmowca rozmowca;
        List debaty = debataDAO.findAll();
        List rozmowcy = rozmowcaDAO.findAll();
        List najnowsze = new ArrayList();
        List najpopularniejsze = new ArrayList();
        List najlepsi = new ArrayList();

        System.out.println(debaty.size());
        if (debaty.size() >= 3) {
            najnowsze.add(debaty.get(debaty.size() - 1));
            najnowsze.add(debaty.get(debaty.size() - 2));
            najnowsze.add(debaty.get(debaty.size() - 3));
        } else {

            najnowsze = debaty;
        }

        KomparatorDebata komp = new KomparatorDebata();
        Collections.sort(debaty, komp);

        KomparatorRozmowca kompr = new KomparatorRozmowca();
        Collections.sort(rozmowcy, kompr);

        for (int i = 0; i < rozmowcy.size(); i++) {

            rozmowca = (Rozmowca) rozmowcy.get(i);
            rozmowca.setRanking(i + 1);
            rozmowcaDAO.save(rozmowca);
        }

        if (debaty.size() > 3) {

            najpopularniejsze.add(debaty.get(0));
            najpopularniejsze.add(debaty.get(1));
            najpopularniejsze.add(debaty.get(2));

        } else {

            najpopularniejsze = debaty;
        }

        if (rozmowcy.size() > 3) {
            najlepsi.add(rozmowcy.get(0));
            najlepsi.add(rozmowcy.get(1));
            najlepsi.add(rozmowcy.get(2));;

        } else {

            najlepsi = rozmowcy;
        }

        model.addObject("debaty", debataDAO.findAll());
        model.addObject("najnowsze", najnowsze);
        model.addObject("najpopularniejsze", najpopularniejsze);
        model.addObject("najlepsi", najlepsi);

        return model;
    }

    @RequestMapping("/ocena")
    public String ocena(@RequestParam int id) {

        Debata debata = debataDAO.findOne(id);
        //  model.addObject("debata", debata);

        debata.setLiczbaocen(debata.getLiczbaocen() + 1);
        debataDAO.save(debata);

        return "redirect:singled.htm?id=" + id;
    }
}
