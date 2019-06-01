using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;

namespace Capa.BL
{
   public class ObtenerID_BL
    {
        private ObtenerID_DA db = new ObtenerID_DA();

        public int ObtenerID(string oe)
        {
            return db.obtenerID(oe);
        }
    }
}
