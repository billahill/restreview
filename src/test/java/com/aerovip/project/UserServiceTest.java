/**
 * 
 */
package com.aerovip.project;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.aerovip.project.config.AppConfig;
import com.aerovip.project.entities.Role;
import com.aerovip.project.entities.User;
import com.aerovip.project.repositories.RoleRepository;
import com.aerovip.project.services.UserService;
import java.util.HashSet;
import java.util.Set;

/**
 * @author Carlos
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=AppConfig.class)
public class UserServiceTest 
{
	@Autowired
	private UserService userService;
        @Autowired
        private RoleRepository roleRepository;
	
	//@Test
	public void findAllUsers()  {
		List<User> users = userService.findAll();
		assertNotNull(users);
		assertTrue(!users.isEmpty());
	}
	
	//@Test
	public void findUserById()  {
		User user = userService.findUserById(1);
		assertNotNull(user);
	}
        @Test
        public void createUserWithRole(){
                Role role = new Role("ROLE_ADMIN");
                Set<Role> roles = new HashSet<>();
                roles.add(role);
		User user = new User("user", "user@user.com", "user", null);
                user.setRoles(roles);
		User savedUser = userService.create(user);
		User newUser = userService.findUserById(savedUser.getId());
		assertEquals("user", newUser.getName());
		assertEquals("user@user.com", newUser.getEmail());
        }
	
	
}
