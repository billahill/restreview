package com.aerovip.project.repositories;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aerovip.project.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Serializable>
{

}
