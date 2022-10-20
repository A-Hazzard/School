package Inheritance_an_Abstract_Classes.Employee;

public class BasePlusCommissionEmployee extends CommissionEmployee {

    private double baseSalary;
    
    //constructor
    public BasePlusCommissionEmployee(String first, String last, String ssn, 
            double sales, double rate, double salary) {
                super(first, last, ssn, sales, rate);
                baseSalary = salary;
    }
    
    public void setBaseSalary(double salary){
        baseSalary = salary;
    } 

    public double getBaseSalary(){
        return baseSalary;
    }	

    public double earnings(){
        return getBaseSalary() + super.earnings();
    }

    public String toString(){
        return "Salaried Commission: " + super.toString()+
            "\nBase Salary:$ " + getBaseSalary();
    } 
}