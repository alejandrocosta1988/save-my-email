package servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet(urlPatterns= {"/emailList", "/email/*"})
public class EmailListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmailListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "/index.html";
		String action = request.getParameter("action");
		
		if (action == null) {
			action = "join"; //default action
		}
		
		if (action.equalsIgnoreCase("join")) {
			
			url = "/index.html"; //the join page
			
		} else if (action.equalsIgnoreCase("add")) {
			
			String firstName = request.getParameter("first-name");
			String lastName = request.getParameter("last-name");
			String email = request.getParameter("email");
			
			User user = new User(firstName, lastName, email);
			
			//sets user object in request object and sets the url
			request.setAttribute("user", user);
			url = "/thanks.jsp"; //the thanks page
			
		}
		
		// forwards request and response objects to specified url
		getServletContext()
		  .getRequestDispatcher(url)
		  .forward(request, response);
		
	}

}
