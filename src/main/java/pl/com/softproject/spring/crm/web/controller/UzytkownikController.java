package pl.com.softproject.spring.crm.web.controller;

import dto.UzytkownikDto;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pl.com.softproject.spring.crm.web.dao.UzytkownikDAO;
import pl.com.softproject.spring.crm.web.model.Uzytkownik;

@Controller

public class UzytkownikController {

    @Autowired
    private UzytkownikDAO uzytkownikDAO;

    @RequestMapping("/register")
    public ModelAndView register() {

        ModelAndView modelAndView = new ModelAndView("register");

        UzytkownikDto uzytkownikdto = new UzytkownikDto();
        modelAndView.addObject("uzytkownik", uzytkownikdto);

        return modelAndView;
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String saveRozmowca(UzytkownikDto uzytkownikdto, BindingResult binding) throws IOException {

        if (binding.hasErrors()) {
            return "register";
        } else {
            System.out.println(uzytkownikdto);
            Uzytkownik uzytkownik = new Uzytkownik(uzytkownikdto);
            uzytkownikDAO.save(uzytkownik);
            return "redirect:admin.htm";
        }
    }

    /*   
     @RequestMapping("/add")
     public ModelAndView addUzytkownik() {
        
     ModelAndView modelAndView = new ModelAndView("addUzytkownik");
        
     Uzytkownik  uzytkownik = new Uzytkownik();
     modelAndView.addObject("uzytkownik", uzytkownik);
      
   
        
     return modelAndView;
     }
    
     @RequestMapping(value = "add", method = RequestMethod.POST)
     public String saveUzytkownik(@Valid Uzytkownik uzytkownik, BindingResult binding) {
        
     if(binding.hasErrors()) {
     return "addUzytkownik";
     } else {
     System.out.println(uzytkownik);
     uzytkownikDAO.save(uzytkownik);
     return "redirect:/uzytkownik/list.htm";
     }
     }
    
     @RequestMapping("/list")
     public ModelAndView list() {
     Iterable<Uzytkownik> res = uzytkownikDAO.findAll();
        
     ModelAndView model = new ModelAndView("uzytkownikList");
     model.addObject("uzytkownicy", res);
        
     return model;
        
     }
    
     @RequestMapping("edit")
     public ModelAndView edit(@RequestParam int id) {
        
     ModelAndView model = new ModelAndView("addUzytkownik");
        
     Uzytkownik uzytkownik = uzytkownikDAO.findOne(id);
     model.addObject("uzytkownik", uzytkownik);
      
   
        
     return model;
     }
    
    
     @RequestMapping("/search")
     public ModelAndView search(String name) {
        
     //  Iterable<Uzytkownik> res = uzytkownikDAO.findByNameLike(name + "%");
        
     ModelAndView model = new ModelAndView("uzytkownikList");
     model.addObject("uzytkownicy", res);
        
     return model;
        
     }*/
}
