using System;

namespace Calculador
{
    class Program
    {
        static void Main(string[] args)
        {
            {
                int opcion = -1;
                int dato1 = 0;
                int dato2 = 0;
                float resultado = 0;
                string datoInverso = "";
                string datoIngresado = "";
                while (opcion == -1)
                {
                    Console.WriteLine("\n********************\nMenu Calculadora\n" +
                    "\n1. Sumar" +
                    "\n2. Restar" +
                    "\n3. Multiplicar" +
                    "\n4. Dividir" +
                    "\n5. Numero Primo" +
                    "\n6. Numero Palindromo" +
                    "\n7. Salir");


                    Console.WriteLine("\nSeleccione una operacion a ejecutar: ");
                    opcion = int.Parse(Console.ReadLine());

                    switch (opcion)
                    {
                        case 1:
                            ingresoDatos();
                            resultado = dato1 + dato2;
                            Console.WriteLine("\nEl resultado de la suma es: " + resultado);
                            opcion = -1;
                            break;
                        case 2:
                            ingresoDatos();
                            resultado = dato1 - dato2;
                            Console.WriteLine("\nEl resultado de la resta es: " + resultado);
                            opcion = -1;
                            break;
                        case 3:
                            ingresoDatos();
                            resultado = dato1 * dato2;
                            Console.WriteLine("\nEl resultado de la multiplicaion es: " + resultado);
                            opcion = -1;
                            break;
                        case 4:
                            ingresoDatos();
                            resultado = dato1 / dato2;
                            Console.WriteLine("\nEl resultado de la multiplicaion es: " + resultado);
                            opcion = -1;
                            break;
                        case 5:
                            Console.WriteLine("Ingrese el valor a evaluar: ");
                            dato1 = int.Parse(Console.ReadLine());
                            esPrimo();
                            opcion = -1;
                            break;
                        case 6:
                            datoInverso = "";
                            Console.WriteLine("Ingrese el valor a evaluar: ");
                            datoIngresado = Console.ReadLine();
                            esPalindromo();
                            opcion = -1;
                            break;
                        case 7:
                            opcion = 0;
                            break;
                    }
                    void ingresoDatos()
                    {
                        Console.WriteLine("Ingrese el primer dato: ");
                        dato1 = int.Parse(Console.ReadLine());
                        Console.WriteLine("Ingrese el segundo dato: ");
                        dato2 = int.Parse(Console.ReadLine());
                    }
                    void esPrimo()
                    {
                        if (dato1 == 2 || dato1 == 3 || dato1 == 5 || dato1 == 7)
                        {
                            Console.WriteLine("\nEl numero ingresado es primo");
                        }
                        else if (dato1 % 2 == 0 || dato1 % 3 == 0 || dato1 % 5 == 0 || dato1 % 7 == 0)
                        {
                            Console.WriteLine("\nEl numero ingresado no es primo");
                        }
                        else
                        {
                            Console.WriteLine("\nEl numero ingresado es primo");
                        }
                    }
                    void esPalindromo()
                    {
                        for (int i = datoIngresado.Length - 1; i >= 0; i--)
                        {
                            datoInverso = datoInverso + datoIngresado[i];
                        }
                        //Console.WriteLine(datoInverso);
                        if (datoIngresado.Equals(datoInverso))
                        {
                            Console.WriteLine("El dato ingresado es palindromo");
                        }
                        else
                        {
                            Console.WriteLine("El dato ingresado no es palindromo");
                        }
                    }

                }
            }
        }
    }
    
}
