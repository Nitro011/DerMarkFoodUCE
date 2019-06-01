using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;
namespace Capa.BL
{
   public class Empleado_BL
    {
        private Empleado_DA db = new Empleado_DA();

        public object Insertar(Empleado_E ee)
        {
            return db.insertar(ee);
        }
    }
}
