

package pl.com.softproject.spring.crm.web.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pl.com.softproject.spring.crm.web.dao.UserDAO;
import pl.com.softproject.spring.crm.web.dao.TeamDAO;
import pl.com.softproject.spring.crm.web.model.User;
import pl.com.softproject.spring.crm.web.model.Team;


@Controller
@RequestMapping("/user")
public class UserController {
    
    @Autowired
    private UserDAO userDAO;
   
    @Autowired
    private TeamDAO teamDAO;
    
    @RequestMapping("/add")
    public ModelAndView addUser() {
        
        ModelAndView modelAndView = new ModelAndView("addUser");
        
        User user = new User();
        modelAndView.addObject("user", user);
         modelAndView.addObject("teams", teamDAO.findAll());
   
        
        return modelAndView;
    }
    
    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult binding) {
        
        if(binding.hasErrors()) {
            return "addUser";
        } else {
            System.out.println(user);
            userDAO.save(user);
            return "redirect:/user/list.htm";
        }
    }
    
    @RequestMapping("/list")
    public ModelAndView list() {
        Iterable<User> res = userDAO.findAll();
        
        ModelAndView model = new ModelAndView("userList");
        model.addObject("users", res);
        
        return model;
        
    }
    
    @RequestMapping("edit")
    public ModelAndView edit(@RequestParam int id) {
        
        ModelAndView model = new ModelAndView("addUser");
        
        User user = userDAO.findOne(id);
        model.addObject("user", user);
         model.addObject("teams", teamDAO.findAll());
   
        
        return model;
    }
    
    
  /*  @RequestMapping("/search")
    public ModelAndView search(String name) {
        
       // Iterable<User> res = userDAO.findByNameLike(name + "%");
        
        ModelAndView model = new ModelAndView("userList");
      //  model.addObject("users", res);
        
        return model;
        
    }*/
            
    
}
