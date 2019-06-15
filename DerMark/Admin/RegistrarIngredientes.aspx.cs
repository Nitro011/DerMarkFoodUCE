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
    public partial class RegistrarIngredientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static object insertar(string nombreProducto, string cantidad, string unidadM,string descripcionP,string costo)
        {

            int cantida1 = Convert.ToInt32(cantidad);
            decimal unidadM1 = Convert.ToDecimal(unidadM);

            decimal costo1 = Convert.ToDecimal(costo);
       

            Producto_Ingrediente_BL bc = new Producto_Ingrediente_BL();


            Productos_Ingredientes_E pe = new Productos_Ingredientes_E();

            pe.nombres_productos = nombreProducto;
            pe.cantidad = cantida1;
            pe.unidad_de_medida = unidadM1;
            pe.descripcion = descripcionP;
            pe.costo = costo1;


            return bc.Insertar(pe);


        }

        [WebMethod]
        public static object llenarUnidadDeMedida()
        {
            LlenarDropDown_BL ll = new LlenarDropDown_BL();

            return ll.ObtenerUnidadDeMedida();



        }
    }
}