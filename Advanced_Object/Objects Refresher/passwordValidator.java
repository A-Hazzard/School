import java.util.Scanner;

public class passwordValidator {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int upperCase = 0;

        System.out.println("Enter your password, must be at least 8 characters long: ");
        String password = input.nextLine();

        System.out.println("Enter your password again: ");
        String password2 = input.nextLine();

        getPassword(password, password2, upperCase);

        input.close();
        
    }// end main

    // function to validate password
    public static void getPassword(String password, String password2, int UpperCase) {

        // main if statement
        if (password.equals(password2)) {

            // loops iterates through password and check if password contains upper case
            // characters
            for (int i = 0; i < password.length(); i++) {
                char ch = password.charAt(i);
                if (Character.isUpperCase(ch))
                    UpperCase++;
            } // end loop

            // check if password's length is < 8 and has at least one upper case character
            if ((password.length() < 8 && UpperCase >= 1) || (password.length() < 8 && UpperCase < 1))
                System.out.println("Password is too short! Ensure that you have at least 8 characters in length");
                
                // check if password's length is >= 8 but doesn't have at least one upper case character
                else if ((password.length() >= 8 && UpperCase < 1))
                System.out.println("Ensure that you have at least 1 Upper case character");
            
                // check if password's length is >= 8 and has at least one upper case character
                else if (password.length() >= 8 && UpperCase >= 1)
                System.out.println("Valid password!");
                //if check fails outputs invalid password
                else
                System.out.println("Invalid password!\nInsure that your password has at least one upper case character and is 8 characters long");
        } // end main if statement
        else
            System.out.println("Passwords do not match");
        // end if statement

    }// end getPassword function
}// end class
