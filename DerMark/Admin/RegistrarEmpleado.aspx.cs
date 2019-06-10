using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa.Entidad;
using Capa.BL;

namespace DerMark.Admin
{
    public partial class RegistrarEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static object insertar(string ciudadID, string nacionalidadID, string nombre, string apellido, string descripcion, string celular, string contraseña, string correo_electronico,string establecimiento,string tipoempleado,string direccionEmple,string fnN,string sueldo)
        {

            Empleado_BL bc = new Empleado_BL();


            Empleado_E ee = new Empleado_E();


           

            int ciudad = Convert.ToInt32(ciudadID);
            int nacionalidad = Convert.ToInt32(nacionalidadID);
         
            int establecimiento1 = Convert.ToInt32(establecimiento);
            int tipoempleado1 = Convert.ToInt32(tipoempleado);

            decimal sueld = Convert.ToDecimal(sueldo);
            DateTime fechaN = Convert.ToDateTime(fnN);
          
          


            ee.nacionalidad = nacionalidad;       
            ee.ciudad = ciudad;
            ee.nombre = nombre;
            ee.apellido = apellido;        
            ee.descripcion = descripcion;
            ee.celular = celular;
            ee.contraseña = contraseña;
            ee.correo_electronico = correo_electronico;
            ee.establecimiento = establecimiento1;
            ee.tipoempleado = tipoempleado1;
            ee.direccion = direccionEmple;
            ee.sueldo = sueld;
            ee.fecha_de_nacimiento = fechaN;
          



            return bc.Insertar(ee);


        }

        [WebMethod]
        public static object llenarNacionalidad()
        {
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

            return ll.Obtener_Nacionalidad();



        }

      
        [WebMethod]
        public static object llenarCiudad()
        {
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

            return ll.Obtener_Ciudad();



        }

        [WebMethod]
        public static object ObtenerEstablecimiento()
        {
            Establecimiento_E ese = new Establecimiento_E();
            LlenarDropDown_BL ll = new LlenarDropDown_BL();
            ObtenerID_BL obl = new ObtenerID_BL();

            ese.correo_electronico = HttpContext.Current.Session["email"].ToString();

           int d =  Convert.ToInt32(obl.ObtenerID(ese.correo_electronico));

            ese.id = d;

            return ll.Obtener_establecimientod(ese);



        }
        [WebMethod]

        public static object ObtenerTipoEmpleado()
        {
           
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

          



            return ll.Obtener_tipoempleado();



        }
    }
}