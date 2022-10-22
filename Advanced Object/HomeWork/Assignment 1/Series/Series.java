package Series;

public class Series{ 
    private String title; // title of the series 
    private String classification; /* classification of the series(comedy, drama, action etc.)*/ 
    private int time; // running time of each episode in minutes 

    public Series(String name, String category, int length){ 
        title = name; 
        classification = category; 
        time = length;  
    }  
    
    public String getTitle(){ 
        return title; 
    }  

    public int getTime(){ 
        return time; 
    }  
    
    public void setClassification(String category){ 
        classification = category; 
    }  

    public String toString(){ 
        return "Netflix Series: " + title; 
    }  
    
    public void printSeries(){ 
        System.out.println(title + " (" + classification + "):" + time); 
    } 
}//end class Series 
