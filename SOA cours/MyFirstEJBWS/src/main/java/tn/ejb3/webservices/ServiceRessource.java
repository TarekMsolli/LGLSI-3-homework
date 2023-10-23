package tn.ejb3.webservices;

import jakarta.ejb.LocalBean;
import jakarta.ejb.Stateless;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.GET;

/**
 * Session Bean implementation class ServiceRessource
 */
@Stateless
@LocalBean
@Path("/MyRestRessource")
public class ServiceRessource {

    /**
     * Default constructor. 
     */
    public ServiceRessource() {
        // TODO Auto-generated constructor stub
    }
    
    @GET
    @Path("/helloEJB")
    public String sayHelloEJB() {
    	return "Hi I'm an EJB stateless session";
    }

}
