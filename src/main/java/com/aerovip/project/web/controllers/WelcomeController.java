/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aerovip.project.web.controllers;

import java.security.Principal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Carlos
 */
@Controller
public class WelcomeController {
    
    @RequestMapping("/welcome")
    public String welcome(Model model){
        String username = (String)UserController.getCurrentUser().getName();
        model.addAttribute("username", username);
        return "welcome";
    }
    // for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied(Principal user) {
 
		ModelAndView model = new ModelAndView();
                System.out.println(user.toString());
		if (user != null) {
			model.addObject("msg", "Hi " + user.getName() 
			+ ", you do not have permission to access this page!");
		} else {
			model.addObject("msg", 
			"You do not have permission to access this page!");
		}
 
		model.setViewName("403");
		return model;
 
	}
        @RequestMapping("error")
        public String returnErrorPage(Model model){
            model.addAttribute("message", "The page you are looking for could not be found");
            return "notfound";
        }
        @RequestMapping(value="about", method = RequestMethod.GET)
        public String about(){
            return "about";
        }
        @RequestMapping(value="contact", method = RequestMethod.GET)
        public String contact()
        {
            return "contact";
        }
 
}
