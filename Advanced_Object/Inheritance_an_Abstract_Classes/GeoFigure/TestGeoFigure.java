package Inheritance_an_Abstract_Classes.GeoFigure;

public class TestGeoFigure {
   public static void main(String[] args) {
       // Create an array of type GeoFigure
      GeoFigure gF[] = {
                           new Triangle(10, 25),
                           new Circle(5),
                           new Rectangle(10, 20)
                        };
       // Compute area of each figure and add it to total.
       // Display each figure and its area.
      double totalArea = 0;
      
      for (int i = 0; i < gF.length; i++) {
         double area = gF[i].computeArea();
         totalArea += area;

          //Calculate perimeter of each object
          //Add to total perimeter
            gF[i].displayMessage();
            System.out.println("Area is " + area + "\n");
         }

       //Print total perimeter
         System.out.println("\nTotal area is " + totalArea);
      }
   }