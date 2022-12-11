import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Store Names: ");
        city cit[] = {
            new WizTech("WizTech", "Towne"),
            new Marios("Mario's Pizza", "San Fernanao")
        };

        String[] colors = new String[3];
        System.out.println("Input 3 types of colors");
        String[] color = returnColor(colors,3);

        System.out.println(color[0]);
        /*for (int i = 0; i < cit.length; i++) {
            System.out.println(cit[i].getStoreName() + " : " + cit[i].getStoreLocation());
        }*/
    }

    static String[] returnColor(String[] colors, int count){
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        colors[count] = input;

        if(count == 1){
            return colors;
        }
        System.out.println(count);
        return returnColor(colors, count-1);

    }

}
