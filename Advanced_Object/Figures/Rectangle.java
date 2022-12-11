package Figures;

public class Rectangle extends GeoFigure{
    protected int width;
    protected int height;


    Rectangle(int w, int h){
        width = w;
        height = h;
    }

    /*Accessors :

        Setters*/
    public void setWidth(int width){
        this.width = width;
    }
    public void setHeight(int height){
        this.height = height;
    }    

    //Getters
    public int getWidth(){
        return this.width;
    }
    public int getHeight(){
        return this.height;
    }  

    //Use the abstracted methods from GeoFigure Class
    public double computeArea() {
        return this.height * this.width;
    }
    public double computePerimeter() {
        return 2 * (this.height + this.width);
    }

    public void displayMessage(){
        System.out.println("Width: " + this.width + 
        "\nHeight: " + this.height + "\n");
    }

}
