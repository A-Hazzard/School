package Vehicle;
public class Car extends Vehicle{

    public Car(String _department, String _color, String _gasType, String _type, int _milesPerHour, double _price, int _ID,int _numOfWheels, int _numOfpassengers) {
        super(_department, _color, _gasType, _type, _milesPerHour, _price, _ID, _numOfWheels, _numOfpassengers);
    }

    public String toString(){
    
        return 
        "\nType: " + getType() + "\nDepartment: " + getDepartment() + "\nType of Gas: " + getGasType() + 
        "\nID: " + getID() + "\nColor: " + getColor() + "\nPrice: $" + getPrice() + "\nSpeed: " + getMilesPerHour() + 
        " Miles per hour " + "\nNo. of Wheels: " + getNumOfWheels() + "\nNo. of Passengers: " + getNumOfPassengers();
    
    }

    
}
