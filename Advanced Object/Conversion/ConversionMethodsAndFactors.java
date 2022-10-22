public interface ConversionMethodsAndFactors extends ConversionFactors {
    //implements conversion methods locally and implements conversionFactors variables from another file 
    double inchestomm(double inches);
    double ouncetogram(double ounces); 
    double poundtogram(double pounds); 
    double hptowatt(double hp);
    double wattstohp(double watts);

    /*
    Variables we are grabbing from ConversionFactors:
        final double INCH_TO_MM = 25.4;
        final double ONCE_TO_GRAM = 28.35;
        final double POUND_TO_GRAM = 453.59;
        final double HP_TO_WATT = 745.7;
        final double  WATT_TO_HP = 1.0 / HP_TO_WATT;
     */
    
}