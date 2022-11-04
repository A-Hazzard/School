package Inheritance_an_Abstract_Classes.GeoFigure;

public class Triangle extends GeoFigure {
    // Data Fields
    protected int base;
    protected int height;
    // Methods
    // Constructor
 
    public Triangle(int _base, int _height) {
      base = _base;
      height = _height;
    }
    // Modifiers
    public void setBase(int _base) {
      base = _base;
    }
    public void setHeight(int _height){
      height = _height;
    }
    // Accessors:
    public int getBase() {
      return base;
    }
    public int getHeight() {
      return height;
    }

    
    // Operations
    public double computeArea() {
      return height * base / 2.0;
    }
    public double computePerimeter() {
      return height + base + 
            Math.sqrt(height*height + base*base);
    }
    public void displayMessage() {
      System.out.println("Right Triangle: base is " + base +
            ", height is " + height);
    }
  }
