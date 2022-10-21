package Vehicle;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("What type of Vehicle do you own:");
        System.out.println("1) Car\n2)Plane");
        String input = scanner.nextLine().toLowerCase();
        
        if(input.equals("1") || input.equals("car")){
            System.out.println("Please provide the following information for your Vehicle: ");
            
            System.out.print("Department: ");
            String department = scanner.nextLine().toLowerCase();

            System.out.print("Color: ");
            String color = scanner.nextLine().toLowerCase();

            System.out.print("Type of Gas: ");
            String typeOfGas = scanner.nextLine().toLowerCase();

            System.out.print("Type of Car: ");
            String typeOfCar = scanner.nextLine().toLowerCase();

            System.out.print("Miles per Hour:");
            int milesPerHour = scanner.nextInt();

            System.out.print("Cost of Vehicle: $");
            double costOfVehicle = scanner.nextDouble();

            System.out.println("Number of passenger seats: ");
            int passengerSeats = scanner.nextInt();

            Vehicle car = new Car(department, color, typeOfGas, typeOfCar, milesPerHour, costOfVehicle, 1, 4, passengerSeats);

            System.out.println("Display Information about your " + car.getType() + "? (Y/N): ");
                String response = scanner.nextLine().toLowerCase();

                if(response.equals("y") || response.equals("yes"))
                    System.out.println("Car's Information: \n" + car);
        }
        
        else if(input.equals("2") || input.equals("plane")){
            System.out.println("Please provide the following information for your Vehicle: ");
            
            System.out.print("Department: ");
            String department = scanner.nextLine().toLowerCase();

            System.out.print("Color: ");
            String color = scanner.nextLine().toLowerCase();

            System.out.print("Type of Gas: ");
            String typeOfGas = scanner.nextLine().toLowerCase();

            System.out.print("Type of Plane: ");
            String typeOfPlane = scanner.nextLine().toLowerCase();

            System.out.print("Miles per Hour:");
            int milesPerHour = scanner.nextInt();

            System.out.print("Cost of Vehicle: $");
            double costOfVehicle = scanner.nextDouble();

            System.out.println("Number of passenger seats: ");
            int numOfpassengers = scanner.nextInt();

            System.out.println("Number of wings: ");
            int numberOfwings = scanner.nextInt();

            System.out.println("Cost of each wing: ");
            double costOfwing = scanner.nextInt();

            System.out.println("Wing Type: ");
            String wingType = scanner.nextLine();

            Vehicle plane = new Plane(department, color, typeOfGas, typeOfPlane, milesPerHour, costOfVehicle, 2, 3, numOfpassengers, numberOfwings, costOfwing, wingType);

            System.out.println("Display Information about your " + plane.getType() + " Plane? (Y/N): ");
            String response = scanner.nextLine().toLowerCase();

                if(response.equals("y") || response.equals("yes"))
                    System.out.println("\n\nPlane's Information: \n" + plane);
        }
        
        }//end main
}//end class