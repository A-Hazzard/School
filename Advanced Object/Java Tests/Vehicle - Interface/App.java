public class App {
    public static void main(String[] args) {
        VehicleInterface vehicles[] = {
            new Car("Mercedes", "White", "Diamond Inc.", 24353535),
            new Truck("SUV", "Black", "Nissan", 430000)
        };

        for (VehicleInterface vehicle : vehicles) {
            System.out.println(vehicle);
        }
    }
}
