package pl.marcinmazur.bmi.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.marcinmazur.bmi.repo.UserDB;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserDB userDB = UserDB.getInstance();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nickName = request.getParameter("nick");
		if (userDB.isNickNameUnique(nickName))
			response.getWriter().write("OK");
		else
			response.getWriter().write("NOT_OK");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nickName = request.getParameter("nick");
		String password = request.getParameter("pass");

		if (userDB.addUser(nickName, password))
			response.getWriter().write("OK");
		else
			response.getWriter().write("NOT_OK");

	}

}
