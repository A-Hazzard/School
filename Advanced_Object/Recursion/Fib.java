public class Fib {
    public static void main(String[] args) {
        System.out.println("Fobonacci of 3: " + Fibonacci(3));
    }

    static int Fibonacci(int num) {
        if (num == 0 || num == 1) {
            return num;
        }
        else{
            return Fibonacci(num - 1) + Fibonacci(num - 2);
        }
    }
}
