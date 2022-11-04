import java.util.Scanner;

public class ComputeInitials {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        
          System.out.println("Enter your first and last name");
        String first = input.nextLine();
        String last = input.nextLine();

        System.out.println(first.substring(0, 1).toUpperCase() + "." + last.substring(0, 1).toUpperCase());
        
/* 
  System.out.println("Enter your name");
        String name = input.nextLine();
        System.out.print("Initials: ");
        for (int i = 0; i < name.length(); i++){
            char init = name.charAt(i);

            if(Character.isUpperCase(init)) System.out.print(init);
        }//end for loop
*/
        

     
       
        input.close();
    }
}
