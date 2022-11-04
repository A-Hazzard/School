/**
 * @(#)AllowanceForLunch.java
 *
 *
 * @author 
 * @version 1.00 2022/6/15
 */

import java.util.Scanner;
public class AllowanceForLunch {

   public static void main (String[] args) {
   	//declare Scanner Variable
   	Scanner input = new Scanner(System.in);
   	//declare variables
   	double spent, max = 200, total_spent = 0, days = 0;
   	final int ARRAY_LENGTH = 5;
   	int lunchMoney[] = new int[ARRAY_LENGTH];
   	
   	for(int i = 0;i < lunchMoney.length;i++){
   		System.out.print("Enter money spent on lunch today: ");
   		spent = input.nextDouble();
		
		if(spent > 40){
			days++;
		}

   		total_spent = spent + total_spent;
   		
   	}
   	System.out.printf("Total Spent This Week: %.2f\n",total_spent);
   	System.out.println("Days Money Spent Exceeded 40: "+days);
   	if(total_spent > max){
   		System.out.println("Weekly Allowance Exceeded!");
   	}

	input.close();
}//end main
}//end class