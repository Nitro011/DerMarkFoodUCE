using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Entidad;
using Capa.Datos;


namespace Capa.BL
{
   public class Producto_BL
    {
        private Productos_DA dbo = new Productos_DA();

        public object Insertar(Productos_E pro)
        {
            return dbo.insertar(pro);
        }
        public object Obtener_Productos()
        {
            return dbo.obt_producto();
        }

    }
}
