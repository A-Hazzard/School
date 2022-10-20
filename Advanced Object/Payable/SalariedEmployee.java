
public class SalariedEmployee extends Employee 
{
   protected double weeklySalary;

   // four-argument constructor
   public SalariedEmployee(String first, String last, String ssn,double salary)
   {
      super( first, last, ssn ); // pass to Employee constructor
      weeklySalary = salary;
   } // end four-argument SalariedEmployee constructor

   // set salary
   public void setWeeklySalary( double salary ){
      weeklySalary = salary;
   } // end method setWeeklySalary

   // return salary
   public double getWeeklySalary(){
      return weeklySalary;
   } // end method getWeeklySalary

   // calculate earnings; override abstract method earnings in Employee
   public double getPaymentAmount(){
      return getWeeklySalary();
   } // end method earnings

   // return String representation of SalariedEmployee object
   public String toString(){
      return "Salaried Employee: \n" + super.toString() 
         + "\nWeekly salary:$" + getWeeklySalary();
   } // end method toString
} // end class SalariedEmployee


