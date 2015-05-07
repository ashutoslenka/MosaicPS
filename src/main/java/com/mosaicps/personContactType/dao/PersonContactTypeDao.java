package com.mosaicps.personContactType.dao;

import java.util.List;

import com.mosaicps.entities.PersonContactType;

public interface PersonContactTypeDao {
	
	public void insert(PersonContactType buyingUser);
	
	//Get All
    public List<PersonContactType> getAll();

}
