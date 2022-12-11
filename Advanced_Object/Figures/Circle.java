package Figures;

public class Circle extends GeoFigure{
    protected int radius;

    Circle(int rad){
        this.radius = rad;
    }

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

}
