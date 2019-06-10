using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;
namespace Capa.BL
{
  public class Tipo_Producto_BL
    {
        private TipoProducto_DA db = new TipoProducto_DA();
        public object Insertar(TipoProducto_E tp)
        {
            return db.insertar(tp);
        }

        public List<TipoProducto_E> Obtener_tipoProducto()
        {
            return db.obt_tipoProducto();
        }
    }
}
