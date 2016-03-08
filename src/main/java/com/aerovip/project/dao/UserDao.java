/**
 * 
 */
package com.aerovip.project.dao;

import java.util.List;

import com.aerovip.project.entities.User;

/**
 * @author Carlos
 *
 */
public interface UserDao {

	public List<User> findAll();
	
	public User create(User user);
	
	public User findUserById(int id);

	public User login(String email, String password);
	
}
