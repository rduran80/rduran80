using System;
using System.Collections.Generic;
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
        public string GetNombre() { return nombre; }
        public string GetCedula() { return cedula; }
        public string GetTelefono() { return telefono; }
        public string GetDireccion() { return direccion; }
        public string GetServicio() { return servicio; }
        public int GetFactura() { return factura; }
        public string GetMes() { return mes; }
        public float GetMonto() { return monto; }
        public float GetDescuento() { return descuento; }
        public float GetSubtotal() { return subtotal; }
        public float GetIva() { return iva; }
        public float GetTotal() { return total; }


        public void SetNombre(string nom)
        {
            nombre = nom;
        }

        public void SetCedula(string ced)
        {
            cedula = ced;
        }
        public void SetTelefono(string tel)
        {
            telefono = tel;
        }
        public void SetDireccion(string dir)
        {
            direccion = dir;
        }
        public void SetServicio(string serv)
        {
            servicio = serv;
        }

        public void SetFactura(int fact)
        {
            factura = fact;
        }
        public void SetMes(string MES)
        {
            mes = MES;
        }
        public void SetMonto(float mont)
        {
            monto = mont;
        }
        public void SetDescuento(float desc)
        {
            descuento = desc;
        }
        public void SetSubtotal(float mont, float desc)
        {
            subtotal = mont - desc;
        }
        public void SetIva(float subt)
        {
            iva = subt * float.Parse("0.13");
        }
        public void SetTotal(float subt,float iva)
        {
            total = subt + iva;
        }
    }
}