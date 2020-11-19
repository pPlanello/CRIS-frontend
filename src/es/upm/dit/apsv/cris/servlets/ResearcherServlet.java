package es.upm.dit.apsv.cris.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;

import es.upm.dit.apsv.cris.model.Publication;
import es.upm.dit.apsv.cris.model.Researcher;

@WebServlet("/ResearcherServlet")
public class ResearcherServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getParameter("id");
		
		Client client = ClientBuilder.newClient(new ClientConfig());
		// Petition to backend - get researcher by id
		Researcher ri = client.target("http://localhost:8080/CRISSERVICE/rest/Researchers/" + id)
				.request().accept(MediaType.APPLICATION_JSON).get(Researcher.class);
		
		// Petition to backend - get publications by id of researcher
		List<Publication> publicationsList = client.target("http://localhost:8080/CRISSERVICE/rest/Researchers/" + id + "/Publications")
				.request().accept(MediaType.APPLICATION_JSON).get(new GenericType<List<Publication>>() {});
		
		request.setAttribute("ri", ri);
		request.setAttribute("publications", publicationsList);
		
		getServletContext().getRequestDispatcher("/ResearchersView.jsp").forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
