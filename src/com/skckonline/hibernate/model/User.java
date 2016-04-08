package com.skckonline.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ps_user")
public class User {
	
	@Id
	@Column(name = "ps_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name = "ps_username")
	private String username;
	
	@Column(name = "ps_full_name")
	private String fullname;
	
	@Column(name = "ps_email")
	private String email;
	
	@Column(name = "ps_identity")
	private String identitas;
	
	@Column(name = "ps_password")
	private String password;
	
	@Column(name = "ps_date_register")
	private String date_register;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIdentitas() {
		return identitas;
	}
	public void setIdentitas(String identitas) {
		this.identitas = identitas;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate_register() {
		return date_register;
	}
	public void setDate_register(String date_register) {
		this.date_register = date_register;
	}
	

}
