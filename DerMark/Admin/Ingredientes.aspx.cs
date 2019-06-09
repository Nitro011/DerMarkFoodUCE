
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using Capa.Entidad;
using Capa.BL;

namespace DerMark.Admin
{
    public partial class Ingredientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static object ObtenerIngredientes()
        {

            Producto_Ingrediente_BL pi = new Producto_Ingrediente_BL();


            return pi.Obtener_ingedientes(); ;



        }

    }
}