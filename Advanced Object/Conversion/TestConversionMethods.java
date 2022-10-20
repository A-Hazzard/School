public class TestConversionMethods implements ConversionMethods, ConversionFactors{
    public static void main(String[] args) {
        double height = 70, food = 4;

        //object needed to call method
        TestConversionMethods converter = new TestConversionMethods();
        System.out.println("My height in mm: " + converter.inchestomm(height));
        System.out.println("My food in grams: " + converter.ouncetogram(food));
    }//end main

    //must implement all methods in interface

    public double inchestomm(double inches){
        return inches * INCH_TO_MM;
    }

    public double ouncetogram(double ounces){
        return ounces * ONCE_TO_GRAM;
    }

    public double poundtogram(double pounds){
        return pounds * POUND_TO_GRAM;
    }

    public double hptowatt(double hp){
        return hp * HP_TO_WATT;
    }

    public double wattstohp(double watts){
        return watts * WATT_TO_HP;
    }

}
