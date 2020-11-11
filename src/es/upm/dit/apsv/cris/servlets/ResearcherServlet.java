package es.upm.dit.apsv.cris.servlets;

import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import es.upm.dit.apsv.cris.model.Publication;
import es.upm.dit.apsv.cris.model.Researcher;

@WebServlet("/ResearcherServlet")
public class ResearcherServlet {

	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws {

		String id = (String) request.getParameter("id");
		Client client = ClientBuilder.newClient(new ClientConfig());
		Researcher ri = client.target("http://localhost:8080/CRISSERVICE/rest/Researchers/" 
         + id)
        .request().accept(MediaType.APPLICATION_JSON).get(Researcher.class);
		
		List<Publication> publications = client.target("http://localhost:8080/CRISSERVICE/rest/Researchers/" 
		         + id + "/Publications")
		        .request().accept(MediaType.APPLICATION_JSON).get(new GenericType(List<Publication>).));
        getServletContext().getRequestDispatcher
	}
}
