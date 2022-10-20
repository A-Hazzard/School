
public class HourlyEmployee extends Employee 
{
   protected  double wage; // wage per hour
   
   protected  double hours; // hours worked for week

   // five-argument constructor
   public HourlyEmployee(String first, String last,String ssn,double hourlyWage, double hoursWorked){
      super( first, last, ssn );
      wage = hourlyWage;
      hours = hoursWorked;
   } // end five-argument HourlyEmployee constructor

   // set wage
   public void setWage( double hourlyWage ){
      wage = hourlyWage;
   } // end method setWage

   // return wage
   public double getWage(){
      return wage;
   } // end method getWage

   // set hours worked
   public void setHours( double hoursWorked ){
      hours = hoursWorked;
   } // end method setHours

   // return hours worked
   public double getHours(){
      return hours;
   } // end method getHours

   // calculate earnings; override abstract method earnings in Employee
   public double getPaymentAmount() {
      if ( hours <= 40 ) // no overtime
         return wage * hours;
      else
         return 40 * getWage() + ( getHours() - 40 )
         	 * getWage() * 1.5;
   } // end method earnings

   // return String representation of HourlyEmployee object
   public String toString()
   {
      return "Hourly Employee: " + super.toString() + 
         "\nHourly wage: " + getWage()+
         "\nHours worked: " + getHours();
   } // end method toString
} // end class HourlyEmployee



