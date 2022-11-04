import java.util.Scanner;

public class reversingStrings{
    public static void main(String[] args) {
        mainmenu();
    }

    public static void mainmenu(){
        Scanner input = new Scanner(System.in);

        System.out.println("Choose and Option: \n1) Reverse a String\n2) Reverse an Integer");
        String choice = input.nextLine();

        if(choice.equals("1") || choice.equals("Reverse a String"))
            reverseString();
        if(choice.equals("2") || choice.equals("Reverse an Integer"))
            reverseInt();
    }

    public static void reverseString(){
        Scanner wordInput = new Scanner(System.in);
        System.out.print("Enter a name or sentence: ");
        String word = wordInput.nextLine();

        char[] letters = new char[word.length()];
        int index = 0;
        for(int i = word.length() - 1; i >= 0; i--) {
            letters[index] = word.charAt(i);
            index++;
        }
    
        String reversedString = "";
        for(int i = 0; i <= letters.length - 1; i++) {
            reversedString += letters[i];
        }
    
        System.out.println("Reversed String: " + reversedString);
    }

    public static void reverseInt(){
        Scanner numInput = new Scanner(System.in);
        System.out.print("Enter a/some numbers: ");
        int num = numInput.nextInt();
        String convertedNumber = Integer.toString(num);

        char[] numbers = new char[convertedNumber.length()];

        int index = 0;
        for(int i = convertedNumber.length() - 1; i >=0; i--){
            numbers[index] = convertedNumber.charAt(i);
            index++;
        }
    
        String reversedStringNumber = "";
        for(int i = 0; i <= numbers.length - 1; i++) {
            reversedStringNumber += numbers[i];
        }

        int reversedIntNumbers = Integer.parseInt(reversedStringNumber);

        System.out.println(reversedIntNumbers);
    }
}