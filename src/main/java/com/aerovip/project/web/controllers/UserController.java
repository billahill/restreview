/**
 *
 */
package com.aerovip.project.web.controllers;

import com.aerovip.project.web.model.UserCreationForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;

import com.aerovip.project.entities.User;
import com.aerovip.project.repositories.RoleRepository;
import com.aerovip.project.services.UserService;
import com.aerovip.project.web.config.SecurityUser;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletContext;
import org.springframework.data.domain.Page;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author Carlos
 *
 */
@Controller
public class UserController {

    private static UserService userService;
    private static RoleRepository roleService;
    private final String uploadFolder = "/uploads/";
    @Autowired
    private ServletContext context;
    private static User loginUser;
     @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    public void setUserService(UserService userService) {
        UserController.userService = userService;
    }

    public static User getCurrentUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            String email = ((UserDetails) principal).getUsername();
            loginUser = userService.findUserByEmail(email);
            return new SecurityUser(loginUser);
        }

        return null;
    }

    @RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
    public String getRegistrationPage(Model model) {
        model.addAttribute("Registrationform", new UserCreationForm());
        return "cadastrar";
    }

    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public String registerUser(@ModelAttribute("Registrationform") UserCreationForm form) {

        User user = new User();
        user.setDob(new Date());
        user.setEmail(form.getEmail());
        user.setName(form.getName());
        user.setPassword(passwordEncoder.encode(form.getPassword())); 

        userService.create(user);
        return "registered";

    }

    @RequestMapping(value = "/uploadimage", method = RequestMethod.GET)
    public String getUploadImagePage() {
        return "uploadimage";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String uploadImage(@RequestParam("file") MultipartFile file) throws IOException {

        //String path = (String) context.getRealPath(uploadFolder);
        String homeDirectory = System.getProperty("user.home");
        System.out.println(homeDirectory);
        String path = homeDirectory + "/uploads";
        UUID uniqueId = UUID.randomUUID();
        String filename = uniqueId.toString() + file.getOriginalFilename();
        System.out.println(path);

        String filePath = path + "/" + filename; //Please note that I am going to remove hardcoaded path to get it from resource/property file
        System.out.println(filePath);
        File dest = new File(filePath);
        file.transferTo(dest);
        loginUser.setImageURL(filename);
        userService.update(loginUser);
        return "registered";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String getProfile(Model model) {
        String imgURL = "/uploads/" + loginUser.getImageURL();
        model.addAttribute("username", loginUser.getName());
        model.addAttribute("email", loginUser.getEmail());
        model.addAttribute("image", imgURL);

        return "profile";
    }
    
    @RequestMapping(value = "/users/{pageNumber}", method = RequestMethod.GET)
    public String getAllUsers(@PathVariable Integer pageNumber, Model model){
        Page<User> page = userService.getUsers(pageNumber);
        
        int current = page.getNumber() + 1;
        int begin = Math.max(1, current - 5);
        int end = Math.min(begin + 10, page.getTotalPages());
        List<User> users = page.getContent();
        
        model.addAttribute("users", users);
        model.addAttribute("user", page);
        model.addAttribute("beginIndex", begin);
        model.addAttribute("endIndex", end);
        model.addAttribute("currentIndex", current);
        for (User user : users) {
            System.out.println(user.getEmail());
        }
        return "users";
    }
    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String getUserFirstPage(Model model) {
        Page<User> page = userService.getUsers(1);

        int current = page.getNumber() + 1;
        int begin = Math.max(1, current - 5);
        int end = Math.min(begin + 10, page.getTotalPages());
        List<User> usersList = page.getContent();

        model.addAttribute("usersList", usersList);
        model.addAttribute("user", page);
        model.addAttribute("beginIndex", begin);
        model.addAttribute("endIndex", end);
        model.addAttribute("currentIndex", current);
        for (User user : usersList) {
            System.out.println(user.getEmail());
        }
        return "users";
    }
    
    @RequestMapping(value = "/results/{pageNumber}", method = RequestMethod.GET)
    public String getUsersByName(@PathVariable Integer pageNumber, @PathVariable String searchTerm, Model model) {
        Page<User> page = userService.findUsersByName(pageNumber, searchTerm);

        int current = page.getNumber() + 1;
        int begin = Math.max(1, current - 5);
        int end = Math.min(begin + 10, page.getTotalPages());
        List<User> users = page.getContent();

        model.addAttribute("users", users);
        model.addAttribute("user", page);
        model.addAttribute("beginIndex", begin);
        model.addAttribute("endIndex", end);
        model.addAttribute("currentIndex", current);
        for (User user : users) {
            System.out.println(user.getEmail());
        }
        return "users";
    }
    /*
    @RequestMapping(value = "/results/{pageNumber}", method = RequestMethod.GET)
    public String getUsersByName(@PathVariable Integer pageNumber, @PathVariable String searchTerm, Model model) {
        Page<User> page = userService.findUsersByName(pageNumber, searchTerm);

        int current = page.getNumber() + 1;
        int begin = Math.max(1, current - 5);
        int end = Math.min(begin + 10, page.getTotalPages());
        List<User> users = page.getContent();

        model.addAttribute("users", users);
        model.addAttribute("user", page);
        model.addAttribute("beginIndex", begin);
        model.addAttribute("endIndex", end);
        model.addAttribute("currentIndex", current);
        for (User user : users) {
            System.out.println(user.getEmail());
        }
        return "users";
    }
    */
}
