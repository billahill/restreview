/**
 * 
 */
package com.aerovip.project.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 * @author Carlos
 *
 */
@Entity
@Table(name="USERS")
public class User implements Serializable 
{
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	@Column(nullable=false, unique=true)
	private String email;
	@Column(nullable=false)
	private String password;
        @Temporal(javax.persistence.TemporalType.DATE)
	private Date dob;
	
	@OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	private Set<Role> roles = new HashSet<>();
        private String imageURL;
	
	public User() {
	}

	public User(String name, String email, String password, Date dob) {
		
		this.name = name;
		this.email = email;
		this.password = password;
		this.dob = dob;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email
				+ ", dob=" + dob + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

    /**
     * @return the imageURL
     */
    public String getImageURL() {
        return imageURL;
    }

    /**
     * @param imageURL the imageURL to set
     */
    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }
	
}
