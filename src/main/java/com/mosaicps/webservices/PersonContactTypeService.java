package com.mosaicps.webservices;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.mosaicps.entities.PersonContactType;
import com.mosaicps.personContactType.dao.PersonContactTypeDaoTemplate;

//Sets the path to base URL + /hello
@Path("/PersonContactTypes")
public class PersonContactTypeService {

		
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getAllPersonContactTypes() {
		
		PersonContactTypeDaoTemplate personContactTypeDAOTemplateService =  new PersonContactTypeDaoTemplate();
		List<PersonContactType> personContactTypes = personContactTypeDAOTemplateService.getAll();
		return Response.ok( personContactTypes ).build(); 
	} 
}