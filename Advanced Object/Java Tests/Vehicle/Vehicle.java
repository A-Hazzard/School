package Vehicle;
/**
 * Vehicle
 */
public abstract class Vehicle {

    //protected variables
    protected String department, color, gasType, type;
    protected int milesPerHour, ID, numOfWheels, numOfpassengers;
    protected double price;

    public Vehicle(String _department, String _color, String _gasType, String _type, 
    int _milesPerHour, double _price,
        int _ID, int _numOfWheels, int _numOfpassengers) {

    department = _department;
    color = _color;
    gasType = _gasType;
    type = _type;
    milesPerHour = _milesPerHour;
    price = _price;
    ID = _ID;
    numOfWheels = _numOfWheels;
    numOfpassengers = _numOfpassengers;
    
}

    protected String getDepartment(){return department;}
    protected String getColor(){return color;}
    protected String getGasType(){return gasType;}
    protected String getType(){return type;}
    protected int getMilesPerHour(){return milesPerHour;}
    protected double getPrice(){return price;}
    protected int getID(){return ID;}
    protected int getNumOfWheels(){return numOfWheels;}
    protected   int getNumOfPassengers(){return numOfpassengers;}
    //protected methods
    protected void go(){System.out.println("And, we're off!");}
    protected void stop(){System.out.println("And, we stopped..");}
}