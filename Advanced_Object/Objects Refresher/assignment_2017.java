import java.util.Scanner;

public class assignment_2017 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        /*Question a. Answer = hmmm...changed names?
            String greet = "Hi";
            String name = "Smeadley";
            String nickname = name.substring(0, 4);
                if ((greet + name).equals(greet + nickname)) System.out.println("no real nickname");
                else System.out.println("hmmm...changed names?");

        //Question ii. Answer = !!! and *** as output
        String X = "";
        String A = "";  
            for(int i=0; i<=2; i++) X+="!";
            for(int i=0; i<3; i++) A+="*";
        System.out.println(X);
        System.out.println(A);

        */
        //test if a sentence contains(!, . , ?) at the end
        /*  System.out.println("Enter a sentence with the following at the end(. , ! , ?): ");
        String sentence = input.nextLine();
        System.out.println(returnSentence(sentence));
        */
        
        int uc = 0, lc = 0, smbl = 0;
        System.out.print("Enter a string (include upper and lowercase and symbols): ");
        String myString = input.nextLine();
        returnAlphanumeric(myString, uc, lc, smbl);

    }//end main

    public static String returnSentence(String sentence){
        //endsWith method tests if the string ends with a specified suffix
        if(sentence.endsWith(".") || sentence.endsWith("!") || sentence.endsWith("?")) 
            return "A good sentence";
                else return "Not a good sentence";//end if statements

    }//end returnSentence function

    public static void returnAlphanumeric(String _myString, int _uc, int _lc, int _smbl){

        for (int i = 0; i < _myString.length(); i++) {
            char ch = _myString.charAt(i);
            if(!Character.isLetterOrDigit(ch)) {
                _smbl++;
                System.out.println(ch);
            }
            if(Character.isUpperCase(ch)) _uc++;
            if(Character.isLowerCase(ch)) _lc++;
        }//end loop

        System.out.println("Number of uppercase letters: " + _uc);
        System.out.println("Number of lowercase letters: " + _lc);
        System.out.println("Number of Symbols: " + _smbl);

        
    }//end returnAlphanumeric function

}//end class
