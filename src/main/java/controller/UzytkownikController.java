

package controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.UzytkownikDao;

import model.Uzytkownik;


@Controller
@RequestMapping("/uzytkownik")
public class UzytkownikController {
    
    @Autowired
   private UzytkownikDao uzytkownikDAO;
   
  
    
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
    
    
 /* @RequestMapping("/search")
    public ModelAndView search(String name) {
        
    //  Iterable<Uzytkownik> res = uzytkownikDAO.findByNameLike(name + "%");
        
        ModelAndView model = new ModelAndView("uzytkownikList");
     model.addObject("uzytkownicy", res);
        
        return model;
        
    }*/
            
    
}
