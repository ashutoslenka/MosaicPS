package com.mosaicps.personContactType.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.mosaicps.entities.PersonContactType;

public class PersonContactTypeDaoTemplate {
	
	 private static final String driverClassName = "com.mysql.jdbc.Driver";
	 private static final String url = "jdbc:mysql://localhost/mosaicps_spring";
     private static final String dbUsername = "root";
     private static final String dbPassword = "mindfire";
	
     static DataSource dataSource;
	
	 public List<PersonContactType> getAll(){
		 
		 String query = "select lutbl_person_contact_type_idx,formatted_appearance, drop_down , full_defination , notes from mosaicps_spring.lutbl_person_contact_type";
				 			 
		 JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
		 
		 List<PersonContactType> personContactTypeList = new ArrayList<PersonContactType>();
		 List<Map<String,Object>> personCotactTypeRows = jdbcTemplate.queryForList(query);
		 
		 for(Map<String,Object> personContactTypeRow : personCotactTypeRows){
			 
			 PersonContactType personContactType = new PersonContactType();
			 
			 if(personContactTypeRow.get("lutbl_person_contact_type_idx") != null){
		    	   
				 personContactType.setpersonContactId(Integer.parseInt(personContactTypeRow.get("lutbl_person_contact_type_idx").toString()));
		     }	
		     else {
		    	   
		    	 personContactType.setpersonContactId(0);
		      }
			 
			 if(personContactTypeRow.get("formatted_appearance") != null){
		    	   
				 personContactType.setformattedAppearnce(String.valueOf(personContactTypeRow.get("formatted_appearance")));
		       }	
		       else {
		    	   
		    	 personContactType.setformattedAppearnce("-");
		       }
			 
			 if(personContactTypeRow.get("drop_down") != null){
		    	   
				 personContactType.setdropDown(String.valueOf(personContactTypeRow.get("drop_down")));
		       }	
		       else {
		    	   
		    	 personContactType.setdropDown("-");
		       }
			 
			 if(personContactTypeRow.get("full_defination") != null){
		    	   
				 personContactType.setfullDefination(String.valueOf(personContactTypeRow.get("full_defination")));
		       }	
		       else {
		    	   
		    	 personContactType.setfullDefination("-");
		       }			 
			 
			 if(personContactTypeRow.get("notes") != null){
		    	   
				 personContactType.setnotes(String.valueOf(personContactTypeRow.get("notes")));
		       }	
		       else {
		    	   
		    	 personContactType.setnotes("-");
		       }
			 
			 personContactTypeList.add(personContactType);
		 }
		 
		 
		 return personContactTypeList;
	 }
	 
	 public static DriverManagerDataSource getDataSource() {
		
		 DriverManagerDataSource dataSource = new DriverManagerDataSource();
		 dataSource.setDriverClassName(driverClassName);
		 dataSource.setUrl(url);
		 dataSource.setUsername(dbUsername);
		 dataSource.setPassword(dbPassword);
		 return dataSource;
	 }
	 
	 public void insert(PersonContactType personContactType){ // This method inserts record into the database.
		 
		 String query = "insert into mosaicps_spring.lutbl_person_contact_type (formatted_appearance, drop_down , full_defination , notes) values (?,?,?,?)" ;
		 
		 JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
		 
		 Object[] args = new Object[] {personContactType.getformattedAppearnce(), personContactType.getdropDown() ,personContactType.getfullDefination() ,
				 personContactType.getnotes()};
		 
		 int out = jdbcTemplate.update(query, args); // Here we are updating the record.
         
	     if(out != 0){
	            
	     }else {
	        	
	     }
		 
	 }
	 
	 public void delete(int tobeDeleteRec){
		 
		 String query = "delete from mosaicps_spring.lutbl_person_contact_type where lutbl_person_contact_type_idx = ?";
		 
		 JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
		 
		 Object[] args = new Object[] {tobeDeleteRec};
		 
		 int out = jdbcTemplate.update(query, args); // Here we are updating the record.
         
	     if(out != 0){
	            
	     }else {
	        	
	     }
		 
	 }

}
