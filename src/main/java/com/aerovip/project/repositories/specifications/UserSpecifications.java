/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aerovip.project.repositories.specifications;

import com.aerovip.project.entities.User;
import com.aerovip.project.entities.metaclass.User_;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.springframework.data.jpa.domain.Specification;

/**
 *
 * @author Carlos
 */
public class UserSpecifications {
    
    public static Specification<User> nameIsLike(final String searchTerm){
        
        return new Specification<User>() {

            @Override
            public Predicate toPredicate(Root<User> root, CriteriaQuery<?> cq, CriteriaBuilder cb) {
                String likePattern = getLikePattern(searchTerm);
                return cb.like(cb.lower(root.<String>get(User_.name)), likePattern);
            }

            private String getLikePattern(String searchTerm) {
                StringBuilder pattern = new StringBuilder();
                pattern.append(searchTerm.toLowerCase());
                pattern.append("%");
                return pattern.toString();
            }
        };
    }
}
