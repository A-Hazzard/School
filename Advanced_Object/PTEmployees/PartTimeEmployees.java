public abstract class PartTimeEmployees {
    protected String name;
    protected int id;
    protected double rate;
    
    public PartTimeEmployees(String n, int i){
        this.name = n;
        this.id = i;
    }
    public PartTimeEmployees(String name, int id, double rate) {
        this.name = name;
        this.id = id;
        this.rate = rate;
    }

    public abstract double findWage();
}
