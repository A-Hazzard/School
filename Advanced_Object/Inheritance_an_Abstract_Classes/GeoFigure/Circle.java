package Inheritance_an_Abstract_Classes.GeoFigure;

public class Circle extends GeoFigure {
    // Data Fields
    protected int radius;

    // Methods
    // Constructors
 
    public Circle(int rad) {
        radius = rad;
    }

    
    // Modifiers
    public void setRadius(int rad) {
      radius = rad;
    }
    // Accessors:
    public int getRadius() {
      return radius;
    }
    // Operations
    public double computeArea() {
      return radius * radius * Math.PI;
    }
  
    
   public double computePerimeter() {
      return 2 * radius * Math.PI;
    }
    public void displayMessage() {
      System.out.println("Circle: radius is " + radius);
    }
  } // class Circle