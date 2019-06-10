using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa.Entidad
{
   public class Productos_E
    {
        public int id { get; set; }
        public int tipo_producto { get; set; }
        public string nombre_producto { get; set; }
        public string descripcion { get; set; }
        public int cantidad { get; set; }
        public decimal precio { get; set; }
        public string tip_Producto { get; set; }

    }
}
