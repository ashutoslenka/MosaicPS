package com.mosaicps.entities;

import java.io.Serializable;

public class PersonContactType implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private int personContactId;
	private String dropDown;
	private String formattedAppearnce;
	private String fullDefination;
	private String notes;
	
	public int getpersonContactId(){
		 return personContactId;
	}
	
	public void setpersonContactId(int personContactId){
		
		this.personContactId = personContactId;
	}
	
	public String getdropDown(){
		 return dropDown;
	}
	
	public void setdropDown(String dropDown){
		
		this.dropDown = dropDown;
	}
	
	public String getformattedAppearnce(){
		 return formattedAppearnce;
	}
	
	public void setformattedAppearnce(String formattedAppearnce){
		
		this.formattedAppearnce = formattedAppearnce;
	}
	
	public String getfullDefination(){
		 return fullDefination;
	}
	
	public void setfullDefination(String fullDefination){
		
		this.fullDefination = fullDefination;
	}
	
	public String getnotes(){
		 return notes;
	}
	
	public void setnotes(String notes){
		
		this.notes = notes;
	}
	

}
