public class TestConversionFactors implements ConversionFactors{
    public static void main(String[] args) {
        double height = 70, food = 4;

        System.out.println("My height in mm: " + inchestomm(height));
        System.out.println("My food in grams: " + ouncetogram(food));
    }//end main

    public static double inchestomm(double inches) {
        return inches * INCH_TO_MM;
    }

    public static double ouncetogram(double ounces) {
        return ounces * ONCE_TO_GRAM;
    }

    public static double poundtogram(double pounds) {
        return pounds * POUND_TO_GRAM ;
    }

    public static double hptowatt(double hp) {
        return hp * HP_TO_WATT;
    }

    public static double wattstohp(double watts) {
        return watts * WATT_TO_HP;
    }

    
}
