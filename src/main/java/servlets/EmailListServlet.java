package servlets;

import java.io.IOException;
import java.time.LocalDate;

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
		
		String url = "/index.jsp";
		String action = request.getParameter("action");
		
		if (action == null) {
			action = "join"; //default action
		}
		
		if (action.equalsIgnoreCase("join")) {
			
			url = "/index.jsp"; //the join page
			
		} else if (action.equalsIgnoreCase("add")) {
			
			String firstName = request.getParameter("first-name");
			String lastName = request.getParameter("last-name");
			String email = request.getParameter("email");
			LocalDate localDate = LocalDate.now();
			
			User user = new User(firstName, lastName, email);
			String message = "";
			
			if (user.isValid()) {
				
				url = "/thanks.jsp"; //the thanks page
				
			} else {
				
				message = "Please complete the requested information.";
				url = "/index.jsp";
				
			}
			
			//sets user object in request object and sets the url
			request.setAttribute("user", user);
			request.setAttribute("message", message);
			request.setAttribute("date", localDate);
			
		}
		
		// forwards request and response objects to specified url
		getServletContext()
		  .getRequestDispatcher(url)
		  .forward(request, response);
		
	}

}
