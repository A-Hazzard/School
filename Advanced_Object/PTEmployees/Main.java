public class Main {
    public static void main(String[] args) {
        DailyPaidEmployee emp1 = new DailyPaidEmployee("Aaron", 1, 50.20, 5);
        DailyPaidEmployee emp2 = new DailyPaidEmployee("Aaron", 1);

        System.out.println(emp1.findWage());
        System.out.println(emp2);

    }
}
