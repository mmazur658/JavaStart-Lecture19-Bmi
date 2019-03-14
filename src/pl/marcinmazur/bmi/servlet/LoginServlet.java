package pl.marcinmazur.bmi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.marcinmazur.bmi.repo.UserDB;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDB userDB = UserDB.getInstance();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nickName = request.getParameter("nickLogin");
		String password = request.getParameter("passwordLogin");

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		boolean isLoginAndPassCorrect = userDB.isLoginCorrect(nickName, password);

		if (isLoginAndPassCorrect) 
			response.sendRedirect("/calculator.jsp");
		
		else {
			out.print("<h2> Nieprawidłowe dane logowania. <h2>");
			out.print("<button onclick='window.history.back()'>Powrót na główną</button>");
		}

	}

}
