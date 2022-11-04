import java.util.Scanner;

public class Password{
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        String pwd;
        int Ucase = 0, digit = 0;

        System.out.println("Enter Password: ");
        pwd = input.nextLine();

         //extracting each character in password
        for (int i = 0; i < pwd.length(); i++) {
           
            char ch = pwd.charAt(i);

            if(Character.isUpperCase(ch)) Ucase++;       
            if(Character.isDigit(ch)) digit++;   
        }//end for loop

        if(Ucase >= 2 && digit >= 1) System.out.println("Valid password.");
        else System.out.println("Invalid Password, Try again.");

        input.close();
    }//end main method
}//end class