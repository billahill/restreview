package com.aerovip.project.repositories;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.aerovip.project.entities.User;
import java.util.List;
import org.springframework.data.domain.Pageable;

public interface UserRepository extends JpaRepository<User, Serializable>{

	@Query("select u from User u where u.email=?1 and u.password=?2")
	User login(String email, String password);

	User findByEmailAndPassword(String email, String password);

	User findUserByEmail(String email);
        
        @Query("select u from User u where u.name like %?1")
        List<User> findUsersByName(Pageable page, String name);
        @Query("select u from User u where u.email like %?1")
        List<User> findUsersByEmail(String email);

}
