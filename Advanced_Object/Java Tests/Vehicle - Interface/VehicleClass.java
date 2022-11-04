public abstract class VehicleClass implements VehicleInterface {

    String type, color, department;
    double cost;

    public VehicleClass(String type, String color, String department, double cost) {
        this.type = type;
        this.color = color;
        this.department = department;
        this.cost = cost;
    }

    public String getType() {
        return type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public String getColor() {
        return color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }
    
    public String getDepartment() {
        return department;
    }
    
    public void setDepartment(String department) {
        this.department = department;
    }
    
    public double getCost() {
        return cost;
    }
    
    public void setCost(double cost) {
        this.cost = cost;
    }
    
    @Override
    public void go(){
        System.out.println("Vroom Vroom!");
    }    

    @Override
    public void stop(){
        System.out.println("We have stopped!");
    }

    @Override
    public void reverse(){
        System.out.println("Reversing...");
    }

    @Override
    public void park(){
        System.out.println("Parking...");
    }

    public String toString(){
        return  
            "Type: " + type + "\nCost: " + cost + "\nDepartment: " + department + 
            "\nColor: " + color + "\n";
    }
}
