using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LoginForm
{
    public class ClsArticulo
    {
        //atributos de clase articulo
        private static int codigo { get; set; }
        private static string descripcion { get; set; }
        private static int cantidad { get; set; }
        private static float precio { get; set; }
        private static DateTime fechaIngreso { get; set; }

        //constructor
        public ClsArticulo() { }

        public ClsArticulo(int Codigo, string Descripcion, int Cantidad, float Precio, DateTime FechaIngreso)
        {
            codigo = Codigo;
            descripcion = Descripcion; 
            cantidad = Cantidad;
            precio = Precio;
            fechaIngreso = FechaIngreso;
        }


        //getter(obtener valor) y setters(asignar un valor)
        public static int GetCodigo() { return codigo; }
        public static string GetDescripcion() { return descripcion; }
        public static int GetCantidad() { return cantidad; }
        public static float GetPrecio() { return precio; }
        public static DateTime GetFechaIngreso() { return fechaIngreso; }


        public static void SetCodigo(int Codigo)
        {
            codigo = Codigo;
        }

        public static void SetDescripcion(string Descripcion)
        {
            descripcion = Descripcion;
        }
        public static void SetCantidad(int Cantidad)
        {
            cantidad = Cantidad;
        }
        public static void SetPrecio(float Precio)
        {
            precio = Precio;
        }
        public static void SetFechaIngreso(DateTime FechaIngreso)
        {
            fechaIngreso = FechaIngreso;
        }
    }
}