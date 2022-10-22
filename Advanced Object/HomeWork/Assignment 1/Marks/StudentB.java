package Marks;

public class StudentB extends Marks {

    public double geoMark;

    public StudentB(double _mathMark, double _englishMark, double _scienceMark, double _geoMark){
        super(_mathMark, _englishMark, _scienceMark);

        geoMark = _geoMark;
    }
    
    public double avgPercentage(){
        double avg = (mathMark + englishMark + scienceMark) / 3;
        double roundAvg  = Math.round(avg * 100.0) / 100.0;
        return roundAvg;
    }

    public String toString(){return "Average for Student B: " + avgPercentage();}}