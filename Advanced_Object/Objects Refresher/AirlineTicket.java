public class AirlineTicket {
	private String destination, passengerName;
	private double cost;

    //constructor
    public AirlineTicket(String dest, double c, String passName) {
    	destination = dest;
        cost = c;
        passengerName = passName;
	}
    //mutators
    public void setCost(double c){
    	cost = c;
    }
    public void setDestination(String dest){
		destination = dest;
	}
	public void setPassengerName(String passName){
		passengerName = passName;
	}

    //accessors
    public String getPassengerName(){
    	return passengerName;	
	}
	public double getCost(){
		return cost;
	}
	
	public String getDestination(){
		return destination;
	}
	//to String
	public String toString(){
		return"Passenger's Name: "+passengerName+"\nDestination: "+destination;
	}

}//end class