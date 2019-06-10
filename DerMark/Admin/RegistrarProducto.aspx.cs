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
    public partial class RegistrarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static object insertar(string nombreProducto, string categoria, string cantidad, string precio, string descripcion)
        {

            int categoriaC = Convert.ToInt32(categoria);
            int cantidadC = Convert.ToInt32(cantidad);
            decimal precioC = Convert.ToDecimal(precio);

            Producto_BL bc = new Producto_BL();


            Productos_E pro = new Productos_E();

            pro.nombre_producto = nombreProducto;
            pro.tipo_producto = categoriaC;
            pro.cantidad = cantidadC;
            pro.precio = precioC;
            pro.descripcion = descripcion;



            return bc.Insertar(pro);


        }




        [WebMethod]
        public static object ObtenerCategoria()
        {

            Tipo_Producto_BL p = new Tipo_Producto_BL();


            return p.Obtener_tipoProducto();


        }
    }
}