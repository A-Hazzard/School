package Marks;

public class StudentA extends Marks{

    
    
    public StudentA(double _mathMark, double _englishMark, double _scienceMark){
        super(_mathMark, _englishMark, _scienceMark);

    }

    public double avgPercentage(){
        double avg = (mathMark + englishMark + scienceMark) / 3;
        double roundAvg  = Math.round(avg * 100.0) / 100.0;
        return roundAvg;
    }

    public String toString(){return "Average for Student A: " + avgPercentage();}    
}
