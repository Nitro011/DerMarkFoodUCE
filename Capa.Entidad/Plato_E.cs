using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa.Entidad
{
   public class Plato_E
    {
        public int id { get; set; }
       
        public string nombre_plato { get; set; }
        public string descripcion { get; set; }
        public int @idProducto_Ingrediente { get; set; }
        public int cantidad { get; set; }
        public int unidad_medida { get; set; }
        public string tiempo_preparacion { get; set; }
    }
}
