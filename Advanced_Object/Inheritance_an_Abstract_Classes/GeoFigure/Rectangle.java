package Inheritance_an_Abstract_Classes.GeoFigure;

public class Rectangle extends GeoFigure{
     // Data Fields
      protected int width;
      protected int height;

      // Methods
      // Constructors
     
      public Rectangle(int _width, int _height) {
      width = _width;
      height = _height;
  }
  // Modifiers
  public void setWidth(int _width) {
    width = _width;
  }
  public void setHeight(int _height) {
    height = _height;
  }
  // Accessors:
  public int getWidth() {
    return width;
  }
  public int getHeight() {
    return height;
  }

  public double computeArea() {
    return height * width;
  }
  public double computePerimeter() {
    return 2 * (height + width);
  }
  public void displayMessage() {
    System.out.println("Rectangle: width is " + width + ", height is " + height);
  }
} 


