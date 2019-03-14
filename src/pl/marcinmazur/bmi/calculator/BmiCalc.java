package pl.marcinmazur.bmi.calculator;

public class BmiCalc {

	public double calcBmi(double height, double weight) {

		height = height / 100;

		return weight / Math.pow(height, 2);
	}

}
