package Series;
import java.util.Scanner;

public class TestSeries {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        String name, category;
        int length;
        System.out.println("Please enter information for the Series:\n");
        
        Series series[] = new Series[3];

        for (int i = 0; i < series.length; i++) {
            System.out.println(i + 1 + ")");

            System.out.print("Name of series: ");
            name = input.nextLine();
            System.out.println("");
            System.out.print("Category of series: ");
            category = input.nextLine();

            System.out.print("Length of series: ");
            length = input.nextInt();
    

            series[i] = new Series(name, category, length);
        }

        series[1].setClassification("Horror");

        for (Series inSeries : series) {
            inSeries.printSeries();
        }
        
    }
}
