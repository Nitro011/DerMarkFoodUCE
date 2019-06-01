using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;

namespace Capa.BL
{
   public class InformacionUsuario_BL
    {

        private InformacionUsuario_DA  db = new InformacionUsuario_DA();
        public List<InformacionUsuario_E> Obtener_Informacion(InformacionUsuario_E ie)
        {
            return db.Obtenerusuarioinformacion(ie);
        }




    }
}
