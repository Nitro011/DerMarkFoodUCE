using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa.BL;
using Capa.Entidad;
namespace DerMark
{
    public partial class RegistroCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        public static object insertar(string nacionalidadID,  string nombre, string apellido, string celular, string contraseña, string correo_electronico)
        {

            Clientes_BL bc = new Clientes_BL();


            Clientes_E ce = new Clientes_E();

            int nacionalidad = Convert.ToInt32(nacionalidadID);
           

            ce.nacionalidad = nacionalidad;
        
          
            ce.nombre = nombre;
            ce.apellido = apellido;
              ce.celular = celular;
            ce.contraseña = contraseña;
            ce.correo_electronico = correo_electronico;
       


            return bc.Insertar(ce);


        }

        [WebMethod]
        public static object llenarNacionalidad()
        {
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

            return ll.Obtener_Nacionalidad();



        }

      
    }
}