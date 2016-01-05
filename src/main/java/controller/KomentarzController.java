package controller;


import java.util.Date;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import dao.KomentarzDAO;
import pl.com.softproject.spring.crm.web.model.Komentarz;



@Controller
@RequestMapping("/komentarz")
public class KomentarzController {
    
    @Autowired
   private KomentarzDAO komentarzDAO;
   
   
  
    
    @RequestMapping("/add")
    public ModelAndView addKomentarz() {
        
        ModelAndView modelAndView = new ModelAndView("addKomentarz");
        
        Komentarz komentarz = new Komentarz();
        modelAndView.addObject("komentarz", komentarz);
      
   
        
        return modelAndView;
    }
    
    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String saveKomentarz(@Valid Komentarz komentarz, BindingResult binding) {
        
        if(binding.hasErrors()) {
            return "addKomentarz";
        } else {
            Date data = new Date();
            komentarz.setData(data);
            System.out.println(komentarz);
            komentarzDAO.save(komentarz);
            return "redirect:/komentarz/list.htm";
        }
    }
    
    @RequestMapping("/list")
    public ModelAndView list() {
        Iterable<Komentarz> res = komentarzDAO.findAll();
        
        ModelAndView model = new ModelAndView("komentarzList");
        model.addObject("komentarze", res);
        
        return model;
        
    }
    
    @RequestMapping("edit")
    public ModelAndView edit(@RequestParam int id) {
        
        ModelAndView model = new ModelAndView("addKomentarz");
        
       Komentarz komentarz = komentarzDAO.findOne(id);
       model.addObject("komentarz", komentarz);
      
   
        
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