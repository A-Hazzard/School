
public class StringMethods
{
	public static void main(String[] args) {
		String num = "8687618373";
		String numString = "Phone number";

        //Length used to output the length of the string
		System.out.println(num.length() + " is the length of the string \"" + num + "\"");

        System.out.println("----------------");

       //Substring used to get a specific range of characters, NOTE: It does not check the last index character.
       System.out.println(num.substring(0, 3) + " is the substring \"Snake\" of the string \"" + num + "\"");

       System.out.println("----------------");

       /*IndexOf method Determines the position of the first 
occurrence of a specified character or 
substring in a string. Returns -1 if not found. */
       System.out.println(num.indexOf("3") + " is the position of the first occurrence of \"Snake\" in the string \"" + num + "\"");

       System.out.println("----------------");

       //last index of a specified character at the end of the string
       System.out.println(num.lastIndexOf("3") + " is the position of the last occurrence of \"Snake\" in the string \"" + num + "\"");

       System.out.println("----------------");

       //concat method used to concatenate multiple strings
       System.out.println(num.concat(numString));




       //replace method used replaces every occurrence of a specified character in a string
      
        System.out.println(num.replace('8', '1') + " is the new string after being replaced");

	}
}
