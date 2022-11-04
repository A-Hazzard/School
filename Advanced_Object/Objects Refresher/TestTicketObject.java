import java.util.Scanner;
public class TestTicketObject{

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        //declare array of objects
        //AirlineTicket [] tktobject = new AirlineTicket[4];
        
        //initialize array objects individually
       /* tktobject[0] = new AirlineTicket("Barbados",3575.00,"John Doe"); 
        tktobject[1] = new AirlineTicket("Grenada",4000,"Carlos Monroe");
        tktobject[2] = new AirlineTicket("Venezuela",6750,"Harry Styles");
        tktobject[3] = new AirlineTicket("Canada",5500,"Carla Davidson"); */

        //initialize using initializer list
       AirlineTicket [] tktobject = {new AirlineTicket("Barbados",3575.00,"John Doe"),new AirlineTicket("Grenada",4000,"Carlos Monroe"),
        new AirlineTicket("Venezuela",6750,"Harry Styles"), new AirlineTicket("Canada",5500,"Carla Davidson")};
       
       //initialize from user input
      /* String desti, name;
       double price;

       for(int i = 0;i < tktobject.length;i++){
        System.out.print("Enter destination: ");
        desti = input.nextLine();

        System.out.print("Enter cost: ");
        price = input.nextDouble();

        System.out.print("Enter name: ");
        name = input.nextLine();
        input.nextLine();

        tktobject[i] = new AirlineTicket(desti, price, name);
       }*/
        //display objects
        for(int i = 0;i < tktobject.length;i++){
            System.out.println(tktobject.toString());

            //display Destination
            System.out.println("Destination: "+tktobject[i].getDestination());
        }
        //change cost
        tktobject[1].setCost(4500);

        input.close();
    }
}