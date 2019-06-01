using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Entidad;
using Capa.Datos;

namespace Capa.BL
{
   public class Usuarios_BL
    {
        private Usuarios_DA db = new Usuarios_DA();

        public object loguearse(Usuarios_E ue)
        {
            return db.loguearse(ue);
        }

    }
}
