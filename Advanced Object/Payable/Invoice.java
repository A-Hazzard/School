

public class Invoice implements Payable{

    //attributes
    private String partNumber;
    private String partDescription;
    private int quantity;
    private double itemPrice;
    
    //constructor
    public Invoice(String partno, String partdesc, int qty, double price) {
    	 partNumber = partno;
    	 partDescription = partdesc;
    	 quantity = qty;
    	 itemPrice = price;
    }
    
    
    //set methods or mutators
    public void setPartNumber(String partno){
    	partNumber = partno;
    }
    
    public void setPartDescription(String partdesc){
    	partDescription = partdesc;
    }
   
    public void setQuantity(int qty){
   	    quantity  = qty;
    }
   
   public void setItemPrice(double price){
  	  itemPrice = price;
   }
  
   
   //get methods or accessors
   public String getPartNumber(){
   	 return partNumber;
   } 
   	
   public String getPartDescription(){
   	return partDescription;
   }	
   	
   public int getQuantity(){
   	return quantity;
   }	
  
   public double getItemPrice(){
   	return itemPrice;
   }
  
   //calculate invoice amount
   public double getPaymentAmount(){
   	return itemPrice * quantity;
   }
   
   
   //toString
   public String toString(){
   	return "Part Number: " + partNumber + "\nPart Description: " + partDescription + "\nQuantity: " + quantity + "\nItem Price:$" + itemPrice; 
   }
   
    
    
}//end class