/**
 *
 */
package com.aerovip.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.aerovip.project.entities.User;
import com.aerovip.project.repositories.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

/**
 * @author Carlos
 *
 */
@Service
@Transactional
public class UserService {

    private static final int PAGE_SIZE = 10;
    @Autowired
    private UserRepository userRepository;
    
    public List<User> findAll() {

        return userRepository.findAll();
    }
    
    public User create(User user) {

        return userRepository.save(user);
    }
    
    public User findUserById(int id) {

        return userRepository.findOne(id);
    }
    
    public User login(String email, String password) {
        return userRepository.findByEmailAndPassword(email, password);
    }
    
    
    public User update(User user) {
        return userRepository.save(user);
    }
    
    public void deleteUser(int id) {
        userRepository.delete(id);
    }
    
    public User findUserByEmail(String email) {
        return userRepository.findUserByEmail(email);
    }
    
    public Page<User> getUsers(Integer pageNumber){
        PageRequest request = new PageRequest(pageNumber - 1, PAGE_SIZE, Sort.Direction.ASC, "name");
        return userRepository.findAll(request);
    }
      public Page<User> findUsersByName(Integer pageNumber, String name){
        PageRequest request = new PageRequest(pageNumber - 1, PAGE_SIZE, Sort.Direction.ASC, "name");
        return (Page<User>) userRepository.findUsersByName(request, name);
    }
}
