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
		 
		 String query = "select formatted_appearance, drop_down , full_defination , notes from mosaicps_spring.lutbl_person_contact_type";
				 			 
		 JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
		 
		 List<PersonContactType> personContactTypeList = new ArrayList<PersonContactType>();
		 List<Map<String,Object>> personCotactTypeRows = jdbcTemplate.queryForList(query);
		 
		 for(Map<String,Object> personCotactTypeRow : personCotactTypeRows){
			 
			 PersonContactType personContactType = new PersonContactType();
			 
			 if(personCotactTypeRow.get("formatted_appearance") != null){
		    	   
				 personContactType.setformattedAppearnce(String.valueOf(personCotactTypeRow.get("formatted_appearance")));
		       }	
		       else {
		    	   
		    	 personContactType.setformattedAppearnce("-");
		       }
			 
			 if(personCotactTypeRow.get("drop_down") != null){
		    	   
				 personContactType.setdropDown(String.valueOf(personCotactTypeRow.get("drop_down")));
		       }	
		       else {
		    	   
		    	 personContactType.setdropDown("-");
		       }
			 
			 if(personCotactTypeRow.get("full_defination") != null){
		    	   
				 personContactType.setfullDefination(String.valueOf(personCotactTypeRow.get("full_defination")));
		       }	
		       else {
		    	   
		    	 personContactType.setfullDefination("-");
		       }			 
			 
			 if(personCotactTypeRow.get("notes") != null){
		    	   
				 personContactType.setnotes(String.valueOf(personCotactTypeRow.get("notes")));
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

}
