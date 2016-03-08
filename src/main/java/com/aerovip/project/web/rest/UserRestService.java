/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aerovip.project.web.rest;

import com.aerovip.project.entities.User;
import com.aerovip.project.services.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Carlos
 */
@RestController
public class UserRestService {
    @Autowired
    private UserService userService; 
    
    @RequestMapping("/rest/allusers")
    public List<User> getUsers(){
        
        return userService.findAll();
    }
}
