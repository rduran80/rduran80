using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LoginForm
{
    public class ClsUsuario
    {
        //atributos de clase usuario
        private static string nombre { get; set; }
        private static string clave { get; set; }

        //constructor
        public ClsUsuario(){}

        public ClsUsuario(string nom, string contrasena)
        {
            nombre = nom;
            clave = contrasena;
        }

        //getter(obtener valor) y setters(asignar un valor)
        public static string GetNombre() { return nombre; }
        public static string GetClave() { return clave; }

        public static void SetNombre(string nom)
        {
            nombre = nom;
        }

        public static void SetClave(string clav)
        {
            clave = clav;
        }
    }
}