package Vehicle;
public class Plane extends Vehicle {
    
    protected int amountOfWings;
    protected double costOfWings;
    protected String typeOfWings;

    public Plane(String _department, String _color, String _gasType, String _type, 
                    int _milesPerHour, double _price, int _ID, int _numOfWheels, int _numOfpassengers, 
                        int _amountOfWings, double _costOfWings, String _typeOfWings){

        super(_department, _color, _gasType, _type, _milesPerHour, _price, _ID, _numOfWheels, _numOfpassengers);
        
            amountOfWings = _amountOfWings;
            costOfWings = _costOfWings;
            typeOfWings = _typeOfWings;
        }

    protected int getAmountOfWings(){return amountOfWings;}
    protected double getCostOfWings(){return costOfWings;}
    protected String getTypeOfWings(){return typeOfWings;}


    public String toString(){
        return 
        "\nType: " + getType() + "\nDepartment: " + getDepartment() + "\nType of Gas: " + getGasType() + 
        "\nID: " + getID() + "\nColor: " + getColor() + "\nPrice: $" + getPrice() + "\nSpeed: " + getMilesPerHour() + 
        " Miles per hour " + "\nNo. of Wheels: " + getNumOfWheels() + "\nNo. of Passengers: " + getNumOfPassengers() + "\nType of Wings" + getTypeOfWings() + "\nNo. of Wings: " + getAmountOfWings() + "\nCost of Wings: " + getCostOfWings() + " Each\n";
        }
    }
