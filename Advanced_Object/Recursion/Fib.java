public class Fib {
    public static void main(String[] args) {
        int x = 3, power = 4;
        int result = power(x, power);

        System.out.println(x + " to the power of " + power + ": " + result);
        System.out.println("Fibonacci of 3: " + Fibonacci(3));
    }

    static int power(int x, int power) {
        if (power != 0) {
        
          return (x * power(x, power - 1));
        }
        else {
            return 1;
        }
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
