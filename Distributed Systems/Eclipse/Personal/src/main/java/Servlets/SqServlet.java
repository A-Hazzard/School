package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SqServlet
 */
@WebServlet("/SqServlet")
public class SqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sum = (int) request.getAttribute("sum");
		
		PrintWriter out = response.getWriter();
		//Outputs to user
		out.println("Square root of " + sum + ": " + Math.sqrt(sum));
		//logs to console for debugging
		System.out.println("Square root of " + sum + ": " + Math.sqrt(sum));
	}

}
