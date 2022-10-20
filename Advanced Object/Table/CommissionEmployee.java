package TABLE;
public class CommissionEmployee extends Employee
{
	protected  double grossSales, commissionRate; 
  //constructor
	public CommissionEmployee(String first, String last, String ssn, double sales,double rate){
		super( first, last, ssn );
		grossSales = sales;
		commissionRate = rate;                            
	} //end constructor
	
	public void setCommissionRate(double rate){
		commissionRate = rate; 
	}
	
	public double getCommissionRate(){
		return commissionRate;
	}
	
	public void setGrossSales(double sales){
		grossSales = sales;
	}
	
	public double getGrossSales(){
		return grossSales;
	}
	
	public double earnings(){
		return getCommissionRate() * getGrossSales();
	}
	
	public String toString(){
		return "Commission employee: " + super.toString()
			+ "\nGross Sales:$" + getGrossSales()
			+ "\nCommission Rate: " 
			+ getCommissionRate();
	}// end toString
}//end class Commission Employee