using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Examen2RoyDuran
{
    public class ClsCliente
    {
        //atributos de clase Cliente
        private static string nombre { get; set; }
        private static string cedula { get; set; }
        private static string telefono { get; set; }
        private static string direccion { get; set; }
        private static string servicio { get; set; }
        private static int factura { get; set; }
        private static string mes { get; set; }
        private static float monto { get; set; }
        private static float descuento { get; set; }
        private static float subtotal { get; set; }
        private static float iva { get; set; }
        private static float total { get; set; }




        //constructor
        public ClsCliente() { }

        public ClsCliente(string nomb, string ced, string tel,
            string dir, string serv, int fact, string MES, float mont,
            float desc, float subt, float IVA, float tot)
        {
            nombre = nomb;
            cedula = ced;
            telefono = tel;
            direccion = dir;
            servicio = serv;
            factura = fact;
            mes = MES;
            monto = mont;
            descuento = desc;
            subtotal = subt;
            iva = IVA;
            total = tot;

        }

        //getter(obtener valor) y setters(asignar un valor)
        public static string GetNombre() { return nombre; }
        public static string GetCedula() { return cedula; }
        public static string GetTelefono() { return telefono; }
        public static string GetDireccion() { return direccion; }
        public static string GetServicio() { return servicio; }
        public static int GetFactura() { return factura; }
        public static string GetMes() { return mes; }
        public static float GetMonto() { return monto; }
        public static float GetDescuento() { return descuento; }
        public static float GetSubtotal() { return subtotal; }
        public static float GetIva() { return iva; }
        public static float GetTotal() { return total; }


        public static void SetNombre(string nom)
        {
            nombre = nom;
        }

        public static void SetCedula(string ced)
        {
            cedula = ced;
        }
        public static void SetTelefono(string tel)
        {
            telefono = tel;
        }
        public static void SetDireccion(string dir)
        {
            direccion = dir;
        }
        public static void SetServicio(string serv)
        {
            servicio = serv;
        }

        public static void SetFactura(int fact)
        {
            factura = fact;
        }
        public static void SetMes(string MES)
        {
            mes = MES;
        }
        public static void SetMonto(float mont)
        {
            monto = mont;
        }
        public static void SetDescuento(float desc)
        {
            descuento = desc;
        }
        public static void SetSubtotal(float mont, float desc)
        {
            subtotal = mont - desc;
        }
        public static void SetIva(float subt)
        {
            iva = subt * 0.13f;
        }
        public static void SetTotal(float subt,float iva)
        {
            total = subt + iva;
        }

        public static void guardarCliente() { 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["EXAMEN2_DBConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insertarCliente";
                cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                cmd.Parameters.Add("@cedula", SqlDbType.VarChar).Value = cedula;
                cmd.Parameters.Add("@telefono", SqlDbType.VarChar).Value = telefono;
                cmd.Parameters.Add("@direccion", SqlDbType.VarChar).Value = direccion;
                cmd.Parameters.Add("@servicio", SqlDbType.VarChar).Value = servicio;
                cmd.Parameters.Add("@factura", SqlDbType.Int).Value = factura;
                cmd.Parameters.Add("@mes", SqlDbType.VarChar).Value = mes;
                cmd.Parameters.Add("@monto", SqlDbType.Float).Value = monto;
                cmd.Parameters.Add("@descuento", SqlDbType.Float).Value = descuento;
                cmd.Parameters.Add("@subtotal", SqlDbType.Float).Value = subtotal;
                cmd.Parameters.Add("@iva", SqlDbType.Float).Value = iva;
                cmd.Parameters.Add("@total", SqlDbType.Float).Value = total;

                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
            }

        }

        public string ValidarDatos(string nom, string ced, string tel, string dir)
        {
            string cadena;
            if (nom == "" || ced == "" || tel == "" || dir == "")
            {
                cadena = "El campo Direccion no puede estar vacio";
                return cadena;
            }
            return "";
        }


    }
}