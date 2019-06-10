using Capa.BL;
using Capa.Entidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DerMark.Admin
{
    public partial class TipoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static object insertar(string ncategoria)
        {

           

            Tipo_Producto_BL bc = new Tipo_Producto_BL();


            TipoProducto_E tp = new TipoProducto_E();

            tp.tipo_producto = ncategoria;
          


            return bc.Insertar(tp);


        }

        [WebMethod]
        public static object ObtenertipoProductos()
        {

            Tipo_Producto_BL tp = new Tipo_Producto_BL();


            return tp.Obtener_tipoProducto(); 


        }
    }
}