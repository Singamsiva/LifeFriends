package com.csuf.util;
import java.io.Serializable;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String firstname;
	private String lastname;
	private String password;
	private String email;
	private String dob;
	private String gender;
	private String bloodtype;
	private String uid;
	
	
	public User(String fn, String ln, String pwd, String em, String db, String gn, String bt, String id){
		this.firstname=fn;
		this.firstname=ln;
		this.password=pwd;
		this.email=em;
		this.dob=db;
		this.gender=gn;
		this.bloodtype=bt;
		this.uid=id;
		
	}
	
	public String getFirstname() {
		return firstname;
	}



	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}



	public String getLastname() {
		return lastname;
	}



	public void setLastname(String lastname) {
		this.lastname = lastname;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getDob() {
		return dob;
	}



	public void setDob(String dob) {
		this.dob = dob;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getBloodtype() {
		return bloodtype;
	}



	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}



	public String getUid() {
		return uid;
	}



	public void setUid(String uid) {
		this.uid = uid;
	}


	
	
	
	@Override
	public String toString(){
		return "firstname="+this.firstname+",lastname="+this.lastname+", password="+this.password+",email="+this.email+",dob="+this.dob+",gender="+this.gender+",bloodtype="+this.bloodtype+" uid="+this.uid;
	}

	
	

}

