using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa.BL;
using Capa.Entidad;

namespace DerMark.Admin
{
    public partial class RegistroAdmin : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        
        }


        [WebMethod]
        public static object insertar(string ciudadID, string nacionalidadID, string paisID, string nombre, string apellido, string fecha_de_nacimiento, string descripcion, string celular, string contraseña, string correo_electronico, string ciudadIDEmpresa, string paisIDEmpresa, string NombreEmpresa, string direccionEmpresa, string descripcionEmpresa, string RNCEmpresa,string correoempresa,string telempresa1)
        {

            Admin_BL bc = new Admin_BL();


            Admin_E ae = new Admin_E();

            int ciudad = Convert.ToInt32(ciudadID);
            int nacionalidad = Convert.ToInt32(nacionalidadID);
            int pais = Convert.ToInt32(paisID);
            int ciudadEmpresa = Convert.ToInt32(ciudadIDEmpresa);
            int paisEmpresa = Convert.ToInt32(paisIDEmpresa);
            DateTime fn = Convert.ToDateTime(fecha_de_nacimiento);


            ae.nacionalidad = nacionalidad;
            ae.pais = pais;
            ae.ciudad = ciudad;
            ae.nombre = nombre;
            ae.apellido = apellido;
            ae.fecha_de_nacimiento = fn;
            ae.descripcion = descripcion;
            ae.celular = celular;
            ae.contraseña = contraseña;
            ae.correo_electronico = correo_electronico;
            ae.ciudadEmpresa = ciudadEmpresa;
            ae.pais = paisEmpresa;
            ae.nombre_de_la_empresa = NombreEmpresa;
            ae.descripcionEmpresa = descripcionEmpresa;
            ae.direccionEmpresa = direccionEmpresa;
            ae.RNCEmpresa = RNCEmpresa;
            ae.correo_electronicoEmpresa = correoempresa;
            ae.telefonoEmpresa = telempresa1;




            return bc.Insertar(ae);


        }

        [WebMethod]
        public static object llenarNacionalidad()
        {
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

            return ll.Obtener_Nacionalidad();



        }

        [WebMethod]
        public static object llenarPais()
        {
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

            return ll.Obtener_Pais();



        }
        [WebMethod]
        public static object llenarCiudad()
        {
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

            return ll.Obtener_Ciudad();



        }



    }
}