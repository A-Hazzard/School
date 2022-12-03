
import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;


public class arrayList {
    public static void main(String[] args) {
        ArrayList<Integer> numArray = new ArrayList<Integer>();
        try{
            Scanner input = new Scanner(System.in);  
            int userInput = 0;
            String output = "";

            //Handles out of bound errors and if user inputs a string value 
            System.out.println("Please enter 5 input");
                //User input
                for (int i = 1; i <= 5; i++) {         
                    userInput = input.nextInt();   
                    numArray.add(userInput);
                }

            output = numArray.toString().replace("[", "").replace("]", "");
            //output the arrayList
            System.out.println("input entered: " + output);
                                        
                int min = numArray.get(0);
            
                //Check for the Lowest number
                for (int i = 1; i < numArray.size(); i++) {
                    if (numArray.get(i) < min) {
                        min = numArray.get(i);
                    }
                }

                System.out.println("Lowest number: " + min);
                input.close();
        
            }   catch(IndexOutOfBoundsException exp){
                System.err.println("Exited With Error.\nException Type: " + exp);
            }catch(InputMismatchException exp){
                System.err.println("Exited With Error. Invalid Integer Input. Don\'t enter a string value\nException Type: " + exp);
            }catch(Exception e){
                System.err.println("Scanner error");
            }


    }//end main method


}//end arrayList Class
