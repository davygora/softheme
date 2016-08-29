using System;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Task for Softheme");

            int rows, sum = 0;

            Console.WriteLine("Enter count of rows = ");
            rows = Convert.ToInt16(Console.ReadLine());

            int[,] mas = new int[rows, rows];
            Random rnd = new Random();

            //Push to matrix random numbers
            for (int i = 0; i < rows; i++)
            {
                Console.Write("\n");
                for (int j = 0; j < rows; j++)
                {
                    if (i >= j)
                    {
                        mas[i, j] = rnd.Next(0, 100);
                        Console.Write(mas[i, j] + "\t");
                    }           
                }
            }

            //add to sum first element of matrix
            sum = mas[0, 0];

            //addition of other numbers
            for (int i = 0; i < rows; i++)
            {
                for (int j =0; j < rows; j++)
                {
                    if (i == j + 1)
                    {
                        sum = sum + mas[i, j];
                    }                    
                }
            }
            Console.Write("\n");
            Console.WriteLine("Sum = {0}", sum);


            Console.WriteLine("Press any key to exit...");
            Console.ReadKey();
        }
    }
}
