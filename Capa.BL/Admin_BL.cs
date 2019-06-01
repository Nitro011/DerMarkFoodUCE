using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;
namespace Capa.BL
{
   public class Admin_BL
    {
        private Admin_DA db = new Admin_DA();

        public object Insertar(Admin_E ae)
        {
            return db.insertar(ae);
        }



    }
}
