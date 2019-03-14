package pl.marcinmazur.bmi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pl.marcinmazur.bmi.calculator.BmiCalc;

@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BmiCalc bmiCalc = new BmiCalc();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		double height = 0;
		double weight = 0;
		double bmi = 0;

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
			height = Double.parseDouble(request.getParameter("height"));
			weight = Double.parseDouble(request.getParameter("weight"));

			if (height == 0 || weight == 0)
				bmi = 0;
			else
				bmi = bmiCalc.calcBmi(height, weight);

		} catch (NumberFormatException e) {
			bmi = 0;
		}

		String responseText = "Twoje BMI to: " + Math.round(bmi);
		out.write(responseText);

	}

}
