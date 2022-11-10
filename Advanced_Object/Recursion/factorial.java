public class factorial{
    public static void main(String[] args) {
        System.out.print("The factorial of 5: " + factorial(5));
    }

    private static int factorial(int num){//5, 4, 3, 2, 1
        if (num <=1) return 1;
        else return num * factorial(num-1);
        /*5 * fac(4)
        4 * fact(3)
        3 * fact(2)
        2 * fact(1)
        return 1
        */
        
    
    }
}