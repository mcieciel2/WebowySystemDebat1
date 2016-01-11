/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.com.softproject.spring.crm.web.controller;

import dto.DebataDto;
import dto.RozmowcaDto;
import dto.RozmowcawDebacieDto;
import java.io.IOException;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.com.softproject.spring.crm.web.dao.DebataDAO;
import pl.com.softproject.spring.crm.web.dao.KategoriaDAO;
import pl.com.softproject.spring.crm.web.dao.RozmowcaDAO;
import pl.com.softproject.spring.crm.web.dao.TerminDAO;
import pl.com.softproject.spring.crm.web.dao.UzytkownikDAO;
import pl.com.softproject.spring.crm.web.model.Argument;
import pl.com.softproject.spring.crm.web.model.Debata;
import pl.com.softproject.spring.crm.web.model.Kategoria;
import pl.com.softproject.spring.crm.web.model.Rozmowca;
import pl.com.softproject.spring.crm.web.model.RozmowcawDebacie;
import pl.com.softproject.spring.crm.web.model.Termin;
import pl.com.softproject.spring.crm.web.model.Uzytkownik;

/**
 *
 * @author Marcin
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private DebataDAO debataDAO;

    @Autowired
    private RozmowcaDAO rozmowcaDAO;

    @Autowired
    private KategoriaDAO kategoriaDAO;

    @Autowired
    private UzytkownikDAO uzytkownikDAO;

    @Autowired
    private TerminDAO terminDAO;

    @RequestMapping("/addt")
    public ModelAndView addTermin() {

        ModelAndView modelAndView = new ModelAndView("addTermin");

        Termin termin = new Termin();
        modelAndView.addObject("termin", termin);
        modelAndView.addObject("kategorie", kategoriaDAO.findAll());

        return modelAndView;
    }

    @RequestMapping(value = "addt", method = RequestMethod.POST)
    public String saveTermin(@Valid Termin termin, BindingResult binding) {

        if (binding.hasErrors()) {
            return "addTermin";
        } else {
            System.out.println(termin);
            terminDAO.save(termin);
            return "redirect:/admin/admin.htm";
        }
    }

    @RequestMapping("editt")
    public ModelAndView editt(@RequestParam int id) {

        ModelAndView model = new ModelAndView("addTermin");

        Termin termin = terminDAO.findOne(id);
        model.addObject("termin", termin);
        model.addObject("kategorie", kategoriaDAO.findAll());

        return model;
    }

    /* @RequestMapping("/search")
     public ModelAndView search(String name) {
        
     //  Iterable<Uzytkownik> res = uzytkownikDAO.findByNameLike(name + "%");
        
     ModelAndView model = new ModelAndView("uzytkownikList");
     model.addObject("uzytkownicy", res);
        
     return model;
        
     }*/
    @RequestMapping("/addk")
    public ModelAndView addKategoria() {

        ModelAndView modelAndView = new ModelAndView("addKategoria");

        Kategoria kategoria = new Kategoria();
        modelAndView.addObject("kategoria", kategoria);

        return modelAndView;
    }

    @RequestMapping(value = "addk", method = RequestMethod.POST)
    public String saveKategoria(@Valid Kategoria kategoria, BindingResult binding) {

        if (binding.hasErrors()) {
            return "addKategoria";
        } else {
            System.out.println(kategoria);
            kategoriaDAO.save(kategoria);
            return "redirect:/admin/admin.htm";
        }
    }

    @RequestMapping("editk")
    public ModelAndView editk(@RequestParam int id) {

        ModelAndView model = new ModelAndView("addKategoria");

        Kategoria kategoria = kategoriaDAO.findOne(id);
        model.addObject("kategoria", kategoria);

        return model;
    }

    /* @RequestMapping("/search")
     public ModelAndView search(String name) {
        
     //  Iterable<Uzytkownik> res = uzytkownikDAO.findByNameLike(name + "%");
        
     ModelAndView model = new ModelAndView("uzytkownikList");
     model.addObject("uzytkownicy", res);
        
     return model;
        
     }*/
    @RequestMapping("/addr")
    public ModelAndView addRozmowca() {

        ModelAndView modelAndView = new ModelAndView("addRozmowca");

        RozmowcaDto rozmowcadto = new RozmowcaDto();
        modelAndView.addObject("rozmowca", rozmowcadto);

        return modelAndView;
    }

    @RequestMapping(value = "addr", method = RequestMethod.POST)
    public String saveRozmowca(RozmowcaDto rozmowcadto, BindingResult binding) throws IOException {

        if (binding.hasErrors()) {
            return "addRozmowca";
        } else {
            System.out.println(rozmowcadto.toString());
            Rozmowca rozmowca = new Rozmowca(rozmowcadto);
            rozmowcaDAO.save(rozmowca);
            return "redirect:admin/admin.htm";
        }
    }

    /* @RequestMapping("/rozmowcasingle")
     public ModelAndView rozmowcasingle() {
     Iterable<Rozmowca> res = rozmowcaDAO.findAll();
        
     ModelAndView model = new ModelAndView("rozmowcasingle");
     model.addObject("rozmowcy", res);
        
     return model;
        
     }*/
    @RequestMapping("/editr")
    public ModelAndView editr(@RequestParam int id) {

        ModelAndView model = new ModelAndView("addRozmowca");

        Rozmowca rozmowca = rozmowcaDAO.findOne(id);
        model.addObject("rozmowca", rozmowca);

        return model;
    }

    /* @RequestMapping("/search")
     public ModelAndView search(String name) {
        
     //  Iterable<Uzytkownik> res = uzytkownikDAO.findByNameLike(name + "%");
        
     ModelAndView model = new ModelAndView("uzytkownikList");
     model.addObject("uzytkownicy", res);
        
     return model;
        
     }*/
    @Transactional
    @RequestMapping("/adddfake")
    public String addfakeDebata() {

        Debata utworzonaDebata = new Debata();

        Rozmowca rozmowca = rozmowcaDAO.findAll().get(0);
        RozmowcawDebacie rozmowcawdebacie = new RozmowcawDebacie();

        rozmowcawdebacie.setDebata(utworzonaDebata);
        rozmowcawdebacie.setRozmowca(rozmowca);
        utworzonaDebata.getRozmowca().add(rozmowcawdebacie);
        rozmowca.getDebaty().add(rozmowcawdebacie);

        debataDAO.save(utworzonaDebata);
        return "redirect:admin.htm";
    }

    @RequestMapping("/addd")
    public ModelAndView addDebata() {

        ModelAndView modelAndView = new ModelAndView("addDebata");

        DebataDto debatadto = new DebataDto();
        modelAndView.addObject("debata", debatadto);
        modelAndView.addObject("kategorie", kategoriaDAO.findAll());
        modelAndView.addObject("rozmowcy", rozmowcaDAO.findAll());

        return modelAndView;
    }

    @RequestMapping(value = "addd", method = RequestMethod.POST)
    public String saveDebata(DebataDto debata, BindingResult binding) {

//        if(binding.hasErrors()) {
//            return "addDebata";
//        } else {
//            System.out.println(debata);
//            debataDAO.save(debata);
//            return "redirect:admin.htm";
//        }
        Debata utworzonaDebata = new Debata(debata);
        for (RozmowcawDebacieDto rf : debata.getListarozmowcow()) {
            Rozmowca rozmowca = rozmowcaDAO.findOne(rf.getId());
            RozmowcawDebacie rozmowcawdebacie = new RozmowcawDebacie();
            rozmowcawdebacie.setDebata(utworzonaDebata);
            rozmowcawdebacie.setRozmowca(rozmowca);
            utworzonaDebata.getRozmowca().add(rozmowcawdebacie);
            rozmowca.getDebaty().add(rozmowcawdebacie);
            rozmowca.setOdbyte(rozmowca.getOdbyte() + 1);
            for (String argumentZFormularza : rf.getArgument()) {
                Argument argument = new Argument();
                argument.setRozmowcawdebacie(rozmowcawdebacie);
                argument.setTresc(argumentZFormularza);
                rozmowcawdebacie.getArgument().add(argument);
            }
        }

        debataDAO.save(utworzonaDebata);

        return "redirect:admin/admin.htm";
    }

    /* @RequestMapping("/admin")
     public ModelAndView list() {
     Iterable<Debata> res = debataDAO.findAll();
        
     ModelAndView model = new ModelAndView("admin");
     model.addObject("debaty", res);
        
     return model;
        
     }*/
    @RequestMapping("/editd")
    public ModelAndView editd(@RequestParam int id) {

        ModelAndView model = new ModelAndView("editDebata");

        Debata debata = debataDAO.findOne(id);
        model.addObject("debata", debata);
        model.addObject("kategorie", kategoriaDAO.findAll());

        return model;
    }

    @RequestMapping("/deleted")
    public String deleted(@RequestParam int id) {

        debataDAO.delete(id);

        return "redirect:admin.htm";

    }

    @RequestMapping("/deletet")
    public String deletet(@RequestParam int id) {

        terminDAO.delete(id);

        return "redirect:admin.htm";

    }

    @RequestMapping("/deleter")
    public String deleter(@RequestParam int id) {

        rozmowcaDAO.delete(id);

        return "redirect:admin.htm";

    }

    @RequestMapping("/deleteu")
    public String deleteu(@RequestParam int id) {

        uzytkownikDAO.delete(id);

        return "redirect:admin.htm";

    }

    @RequestMapping("/deletek")
    public String deletek(@RequestParam int id) {

        kategoriaDAO.delete(id);

        return "redirect:admin.htm";

    }

    /*@RequestMapping("/rozmowcasingle")
     public ModelAndView rozmowcasingle(@RequestParam int id) {
        
     ModelAndView model = new ModelAndView("rozmowcasingle");
     Rozmowca rozmowca = rozmowcaDAO.findOne(id);
        
        
     model.addObject("rozmowcy", rozmowca);
        
     return model;
        
     }*/
    @RequestMapping("/admin")
    public ModelAndView admin() {
        Iterable<Debata> res = debataDAO.findAll();
        Iterable<Rozmowca> res2 = rozmowcaDAO.findAll();
        Iterable<Uzytkownik> res3 = uzytkownikDAO.findAll();
        Iterable<Kategoria> res4 = kategoriaDAO.findAll();
        List<Termin> res5 = terminDAO.findAll();

        ModelAndView model = new ModelAndView("admin");
        model.addObject("debaty", res);
        model.addObject("rozmowcy", res2);
        model.addObject("uzytkownicy", res3);
        model.addObject("kategorie", res4);
        model.addObject("terminy", res5);
        return model;

    }
}
