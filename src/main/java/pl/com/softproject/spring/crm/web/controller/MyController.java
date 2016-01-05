
package pl.com.softproject.spring.crm.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
    
    protected Logger logger = Logger.getLogger(getClass());
    
    @RequestMapping("/home")
    public ModelAndView home() {
        
        logger.debug("MyController.home()");
        
        ModelAndView model = new ModelAndView("home");
        
        model.addObject("imie", "Alicja");
        
        return model;
    }
    
    
    
}
