using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;

namespace Capa.BL
{
   public class Producto_Ingrediente_BL
    {
        private Productos_Ingredientes_DA db = new Productos_Ingredientes_DA();

        public object Insertar(Productos_Ingredientes_E pe)
        {
            return db.insertar(pe);
        }
        public object Obtener_ingedientes()
        {
            return db.obt_ingredientes();
        }


    }
}
