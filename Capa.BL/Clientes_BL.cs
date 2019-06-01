using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;

namespace Capa.BL
{
   public class Clientes_BL
    {

        private Clientes_DA db = new Clientes_DA();

        public object Insertar(Clientes_E ce)
        {
            return db.insertar(ce);
        }

    }
}
