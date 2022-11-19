package arrays;
import java.util.ArrayList;
public class arrayList {

    /**
     * @param args
     */
    public static void main(String[] args) {
        ArrayList<Integer> cars = new ArrayList<Integer>();
        cars.add(2);
        cars.add(2);
        cars.add(10);
        cars.add(2);
        int sum = 0;
        for (int car: cars) {
                sum += cars.get(car);
        }
        System.out.println(sum);

        int high = cars.get(0);
        for (int car : cars) {
            if(cars.get(car) > high) 
                high = cars.get(car);
        }

        System.out.println(high);
    }
}