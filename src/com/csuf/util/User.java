package com.csuf.util;
import java.io.Serializable;
import java.util.Date;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String email; 
	private String password;
    private String firstname;
    private String middlename;
    private String lastname;
    private Date createddate;
    private Date updateddate;
    private Date DOB;
    private String phone;
    private String address;
    private String city;
    private String state;
    private String zip;
    private String country;
    private String bloodgroup;
    private String gender;
    private int roleid;
    private boolean active;
    private boolean isdonor;
    private boolean lifecertified;
    private boolean officialcertified;
	
	
	public User(String em, String pwd, String fn, String mn, String ln, java.sql.Date cd, java.sql.Date ud, java.sql.Date dob,String ph, String ad, String ct, String st, String zip, String cn, String bg, String gen, int id, boolean act, boolean don, boolean lc, boolean oc){
		this.email=em;
		this.password=pwd;
		this.firstname=fn;
		this.middlename=mn;
		this.lastname=ln;
		this.createddate=cd;
		this.updateddate=ud;
		this.DOB=dob;
		this.phone=ph;
		this.address=ad;
		this.city=ct;
		this.state=st;
		this.zip=zip;
		this.country=cn;
		this.bloodgroup=bg;
		this.gender=gen;
		this.roleid=id;
		this.active=act;
		this.isdonor=don;
		this.lifecertified=lc;
		this.officialcertified=oc;
		
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




	public String getFirstname() {
		return firstname;
	}




	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}




	public String getMiddlename() {
		return middlename;
	}




	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}




	public String getLastname() {
		return lastname;
	}




	public void setLastname(String lastname) {
		this.lastname = lastname;
	}




	public Date getCreateddate() {
		return createddate;
	}




	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}




	public Date getUpdateddate() {
		return updateddate;
	}




	public void setUpdateddate(Date updateddate) {
		this.updateddate = updateddate;
	}




	public Date getDOB() {
		return DOB;
	}




	public void setDOB(Date dOB) {
		DOB = dOB;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getCity() {
		return city;
	}




	public void setCity(String city) {
		this.city = city;
	}




	public String getState() {
		return state;
	}




	public void setState(String state) {
		this.state = state;
	}




	public String getZip() {
		return zip;
	}




	public void setZip(String zip) {
		this.zip = zip;
	}




	public String getCountry() {
		return country;
	}




	public void setCountry(String country) {
		this.country = country;
	}




	public String getBloodgroup() {
		return bloodgroup;
	}




	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public int getRoleid() {
		return roleid;
	}




	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}




	public boolean isActive() {
		return active;
	}




	public void setActive(boolean active) {
		this.active = active;
	}




	public boolean isDonor() {
		return isdonor;
	}




	public void setDonor(boolean donor) {
		this.isdonor = donor;
	}




	public boolean isLifecertified() {
		return lifecertified;
	}




	public void setLifecertified(boolean lifecertified) {
		this.lifecertified = lifecertified;
	}




	public boolean isOfficialcertified() {
		return officialcertified;
	}




	public void setOfficialcertified(boolean officialcertified) {
		this.officialcertified = officialcertified;
	}


	
	
	
	
	@Override
	public String toString(){
		return "firstname="+this.firstname+",lastname="+this.lastname+", password="+this.password+",email="+this.email+",DOB="+this.DOB+",gender="+this.gender+",bloodgroup="+this.bloodgroup+",roleid="+this.roleid+",city="+this.city+",address="+this.address+",state="+this.state+",zip="+this.zip+",middlename="+this.middlename+",updateddate="+this.updateddate+",createddate="+this.createddate+",phone="+this.phone+",country="+this.country+",active="+this.active+",donor="+this.isdonor+",lifecertified="+this.lifecertified+",officialcertified="+this.officialcertified;
	}

	
	

}

