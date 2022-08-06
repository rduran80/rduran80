using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace presupuesto_RoyDuran
{
    public class ClsUsuario
    {
        private static string email { get; set; }
        private static string idusuario { get; set; }
        private static string tipo_usuario { get; set; }
        private static string clave { get; set; }
        
        public ClsUsuario() { }

        public ClsUsuario(string mail,string iduser, string tipouser, string clav) {
            email = mail;
            idusuario = iduser;
            tipo_usuario = tipouser;
            clave = clav;
        }

        public static string GetEmail() { return email; }
        public static string GetIdusuario() { return idusuario; }
        public static string GetTipousuario() { return tipo_usuario; }
        public static string GetClave() { return clave; }

        public static void SetEmail(string mail)
        {
            email = mail;
        }

        public static void SetIdusuario(string Iduser)
        {
            idusuario = Iduser;
        }

        public static void SetTipousuario(string Tipouser)
        {
            tipo_usuario = Tipouser;
        }

        public static void SetClave(string clav)
        {
            clave = clav;
        }
    }
}