package Inheritance_an_Abstract_Classes.Employee;

public class TestEmployee {
    public static void main(String[] args) {
        Employee employee[] = {
            new SalariedEmployee("Tom", "Jones", "Q45TG", 12000),
            new HourlyEmployee("Aaron", "Jonathan", "j6007", 35.00, 40),
            new CommissionEmployee("John", "Doe", "J54H", 600.00, 60),
            new BasePlusCommissionEmployee("Shannon", "Marie", "X75RF", 20, 45, 5590.00)
        };
        
    for (int i = 0; i < employee.length; i++) {
        System.out.println(employee[i].toString());

            double earnings = employee[i].earnings();
            System.out.println("Salary:$ "+ earnings);

        System.out.println();
    }//end for loop
        
        
            
        
    }

}
