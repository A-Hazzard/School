package Marks;

public abstract class Marks {

    //compulsory subjects
    double mathMark, englishMark, scienceMark;
    
    public Marks(double _mathMark, double _englishMark, double _scienceMark) {
        mathMark = _mathMark;
        englishMark = _englishMark;
        scienceMark = _scienceMark;
    
    }

    //abstract method
    public abstract double avgPercentage();
}
