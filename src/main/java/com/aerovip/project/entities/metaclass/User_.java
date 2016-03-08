/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aerovip.project.entities.metaclass;

import com.aerovip.project.entities.User;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

/**
 *
 * @author Carlos
 */
@StaticMetamodel(User.class)
public class User_ {
    public static volatile SingularAttribute<User, String> name;
}
