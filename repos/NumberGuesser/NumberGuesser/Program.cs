using System;

namespace NumberGuesser
{
    internal class Program
    {
        static void Main(string[] args)
        {
           getAppInfo();
           getUserName();

            //Initiate  correct random number
            Random random = new Random();
            int correctNumber = random.Next(1, 10);

            //Initiate guess variable
            int guess = 0;
            while (true)
            {
                do
                {
                    Console.WriteLine("Guess a number between 1 - 10");
                    //get user input
                    string inputNumber = Console.ReadLine();

                    if (!int.TryParse(inputNumber, out guess))
                    {
                        //print error message
                        PrintColorMessage(ConsoleColor.Red, "Please enter an Integer Value!");

                        //keep going
                        continue;
                    }

                    //converts inputNumber into an integer
                    guess = Int32.Parse(inputNumber);

                    if (guess != correctNumber)
                        PrintColorMessage(ConsoleColor.Red, "Wrong number please try again...");
                    //end if statement

                } while (guess != correctNumber);
                //end do-while loop

                PrintColorMessage(ConsoleColor.Yellow, "You are Correct!");
                //Display correct message when do-while loop breaks...
               
                Console.WriteLine("Play again? [Y/N]");

                //get response
                string answer = Console.ReadLine().ToUpper();

                if (answer == "Y") continue;
                    else return;
            }
            //end while loop
            
        }
        //end Main method

        static void getAppInfo()
        {
            //changes text color of console
            Console.ForegroundColor = ConsoleColor.Green;

            //Set app variables
            string appName = "Number Guesser";
            string appVersion = "1.0.0";
            string appAuthor = "Aaron Hazzard";


            Console.WriteLine("{0}: Version {1} by {2}", appName, appVersion, appAuthor);

            //resets color of text after the line above it
            Console.ResetColor();

        }
        //end getAppInfo method

        static void getUserName()
        {
            //Ask users' name
            Console.WriteLine("Enter name: ");
            //Get user input
            string inputName = Console.ReadLine();

            Console.WriteLine("Hello {0}, let's play a game...", inputName);

        }
        //end getUserName method

        static void PrintColorMessage(ConsoleColor color, string message)
        {
            //Display correct message when do-while loop breaks...
            Console.ForegroundColor = color;

            //display message...
            Console.WriteLine(message);

            //resets text color to white...
            Console.ResetColor();
        }
    }
    //end Program class
}
//end namespace
