public class DailyPaidEmployee extends PartTimeEmployees{
    private int daysWorked;

    public DailyPaidEmployee(String n, int i){
        super(n, i);
    }
    public DailyPaidEmployee(String n, int i, double r, int days){
        super(n, i, r);
        this.daysWorked = days;
    }
    @Override
    public double findWage() {

        return this.daysWorked * rate;
    }

    public String toString() {return
        "Name: " + name + "ID: " + id;
    }
}
