using Capa.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DerMark.Admin
{
    public partial class productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static object ObtenerProductos()
        {

            Producto_BL p = new Producto_BL();


            return p.Obtener_Productos();


        }
    }
}